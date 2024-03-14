<?php

namespace Botble\Projects\Http\Controllers;

use Botble\Projects\Http\Requests\ProjectsRequest;
use Botble\Projects\Models\Projects;
use Botble\Base\Facades\PageTitle;
use Botble\Base\Http\Controllers\BaseController;
use Illuminate\Http\Request;
use Exception;
use Botble\Projects\Tables\ProjectsTable;
use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Projects\Forms\ProjectsForm;
use Botble\Base\Forms\FormBuilder;

class ProjectsController extends BaseController
{
    public function index(ProjectsTable $table)
    {
        PageTitle::setTitle(trans('plugins/projects::projects.name'));

        return $table->renderTable();
    }

    public function create(FormBuilder $formBuilder)
    {
        PageTitle::setTitle(trans('plugins/projects::projects.create'));

        return $formBuilder->create(ProjectsForm::class)->renderForm();
    }

    public function store(ProjectsRequest $request, BaseHttpResponse $response)
    {
        $projects = Projects::query()->create($request->input());

        event(new CreatedContentEvent(PROJECTS_MODULE_SCREEN_NAME, $request, $projects));

        return $response
            ->setPreviousUrl(route('projects.index'))
            ->setNextUrl(route('projects.edit', $projects->getKey()))
            ->setMessage(trans('core/base::notices.create_success_message'));
    }

    public function edit(Projects $projects, FormBuilder $formBuilder)
    {
        PageTitle::setTitle(trans('core/base::forms.edit_item', ['name' => $projects->name]));

        return $formBuilder->create(ProjectsForm::class, ['model' => $projects])->renderForm();
    }

    public function update(Projects $projects, ProjectsRequest $request, BaseHttpResponse $response)
    {
        $projects->fill($request->input());

        $projects->save();

        event(new UpdatedContentEvent(PROJECTS_MODULE_SCREEN_NAME, $request, $projects));

        return $response
            ->setPreviousUrl(route('projects.index'))
            ->setMessage(trans('core/base::notices.update_success_message'));
    }

    public function destroy(Projects $projects, Request $request, BaseHttpResponse $response)
    {
        try {
            $projects->delete();

            event(new DeletedContentEvent(PROJECTS_MODULE_SCREEN_NAME, $request, $projects));

            return $response->setMessage(trans('core/base::notices.delete_success_message'));
        } catch (Exception $exception) {
            return $response
                ->setError()
                ->setMessage($exception->getMessage());
        }
    }
}
