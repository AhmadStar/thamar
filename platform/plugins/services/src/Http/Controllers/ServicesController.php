<?php

namespace Botble\Services\Http\Controllers;

use Botble\Services\Http\Requests\ServicesRequest;
use Botble\Services\Models\Services;
use Botble\Base\Facades\PageTitle;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use Exception;
use Botble\Services\Tables\ServicesTable;
use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Services\Forms\ServicesForm;
use Botble\Base\Forms\FormBuilder;

class ServicesController extends BaseController
{
    public function index(ServicesTable $table)
    {
        PageTitle::setTitle(trans('plugins/services::services.name'));

        return $table->renderTable();
    }

    public function create(FormBuilder $formBuilder)
    {
        PageTitle::setTitle(trans('plugins/services::services.create'));

        return $formBuilder->create(ServicesForm::class)->renderForm();
    }

    public function store(ServicesRequest $request, BaseHttpResponse $response)
    {
        $services = Services::query()->create($request->input());
        $services->slug = $this->slug($services->name, '-');

        $services->save();
        event(new CreatedContentEvent(SERVICES_MODULE_SCREEN_NAME, $request, $services));

        return $response
            ->setPreviousUrl(route('services.index'))
            ->setNextUrl(route('services.edit', $services->getKey()))
            ->setMessage(trans('core/base::notices.create_success_message'));
    }

    public function edit(Services $services, FormBuilder $formBuilder)
    {
        PageTitle::setTitle(trans('core/base::forms.edit_item', ['name' => $services->name]));

        return $formBuilder->create(ServicesForm::class, ['model' => $services])->renderForm();
    }

    public function update(Services $services, ServicesRequest $request, BaseHttpResponse $response)
    {
        $services->fill($request->input());
        $services->slug = $this->slug($services->name, '-');

        $services->save();

        event(new UpdatedContentEvent(SERVICES_MODULE_SCREEN_NAME, $request, $services));

        return $response
            ->setPreviousUrl(route('services.index'))
            ->setMessage(trans('core/base::notices.update_success_message'));
    }

    public function slug($string, $separator = '-') {
        if (is_null($string)) {
            return "";
        }

        $string = trim($string);

        $string = mb_strtolower($string, "UTF-8");;

        $string = preg_replace("/[^a-z0-9_\sءاأإآؤئبتثجحخدذرزسشصضطظعغفقكلمنهويةى]#u/", "", $string);

        $string = preg_replace("/[\s-]+/", " ", $string);

        $string = preg_replace("/[\s_]/", $separator, $string);

        return $string;
    }

    public function destroy(Services $services, Request $request, BaseHttpResponse $response)
    {
        try {
            $services->delete();

            event(new DeletedContentEvent(SERVICES_MODULE_SCREEN_NAME, $request, $services));

            return $response->setMessage(trans('core/base::notices.delete_success_message'));
        } catch (Exception $exception) {
            return $response
                ->setError()
                ->setMessage($exception->getMessage());
        }
    }
}
