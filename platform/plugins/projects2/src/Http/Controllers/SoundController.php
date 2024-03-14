<?php

namespace Botble\Projects\Http\Controllers;

use Botble\Base\Events\BeforeEditContentEvent;
use Botble\Projects\Http\Requests\SoundRequest;
use Botble\Projects\Repositories\Interfaces\SoundInterface;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use Exception;
use Botble\Projects\Tables\SoundTable;
use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Projects\Forms\SoundForm;
use Botble\Base\Forms\FormBuilder;

class SoundController extends BaseController
{
    /**
     * @var SoundInterface
     */
    protected $soundRepository;

    /**
     * @param SoundInterface $soundRepository
     */
    public function __construct(SoundInterface $soundRepository)
    {
        $this->soundRepository = $soundRepository;
    }

    /**
     * @param SoundTable $table
     * @return \Illuminate\Contracts\View\Factory|\Illuminate\View\View
     */
    public function index(SoundTable $table)
    {
        page_title()->setTitle(trans('plugins/sound::sound.name'));

        return $table->renderTable();
    }

    /**
     * @param FormBuilder $formBuilder
     * @return string
     */
    public function create(FormBuilder $formBuilder)
    {
        page_title()->setTitle(trans('plugins/sound::sound.create'));

        return $formBuilder->create(SoundForm::class)->renderForm();
    }

    /**
     * @param SoundRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function store(SoundRequest $request, BaseHttpResponse $response)
    {
        $sound = $this->soundRepository->createOrUpdate($request->input());

        event(new CreatedContentEvent(SOUND_MODULE_SCREEN_NAME, $request, $sound));

        return $response
            ->setPreviousUrl(route('sound.index'))
            ->setNextUrl(route('sound.edit', $sound->id))
            ->setMessage(trans('core/base::notices.create_success_message'));
    }

    /**
     * @param int $id
     * @param Request $request
     * @param FormBuilder $formBuilder
     * @return string
     */
    public function edit($id, FormBuilder $formBuilder, Request $request)
    {
        $sound = $this->soundRepository->findOrFail($id);

        event(new BeforeEditContentEvent($request, $sound));

        page_title()->setTitle(trans('plugins/sound::sound.edit') . ' "' . $sound->name . '"');

        return $formBuilder->create(SoundForm::class, ['model' => $sound])->renderForm();
    }

    /**
     * @param int $id
     * @param SoundRequest $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function update($id, SoundRequest $request, BaseHttpResponse $response)
    {
        $sound = $this->soundRepository->findOrFail($id);

        $sound->fill($request->input());

        $sound = $this->soundRepository->createOrUpdate($sound);

        event(new UpdatedContentEvent(SOUND_MODULE_SCREEN_NAME, $request, $sound));

        return $response
            ->setPreviousUrl(route('sound.index'))
            ->setMessage(trans('core/base::notices.update_success_message'));
    }

    /**
     * @param int $id
     * @param Request $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function destroy(Request $request, $id, BaseHttpResponse $response)
    {
        try {
            $sound = $this->soundRepository->findOrFail($id);

            $this->soundRepository->delete($sound);

            event(new DeletedContentEvent(SOUND_MODULE_SCREEN_NAME, $request, $sound));

            return $response->setMessage(trans('core/base::notices.delete_success_message'));
        } catch (Exception $exception) {
            return $response
                ->setError()
                ->setMessage($exception->getMessage());
        }
    }

    /**
     * @param Request $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     * @throws Exception
     */
    public function deletes(Request $request, BaseHttpResponse $response)
    {
        $ids = $request->input('ids');
        if (empty($ids)) {
            return $response
                ->setError()
                ->setMessage(trans('core/base::notices.no_select'));
        }

        foreach ($ids as $id) {
            $sound = $this->soundRepository->findOrFail($id);
            $this->soundRepository->delete($sound);
            event(new DeletedContentEvent(SOUND_MODULE_SCREEN_NAME, $request, $sound));
        }

        return $response->setMessage(trans('core/base::notices.delete_success_message'));
    }
}
