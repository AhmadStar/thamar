<?php

namespace Botble\Projects\Http\Controllers;

use Botble\Base\Http\Controllers\BaseController;
use Botble\Projects\Repositories\Interfaces\ProjectsInterface;
use SeoHelper;
use Botble\SeoHelper\SeoOpenGraph;
use Botble\Projects\Models\Projects;
use Theme;
use Botble\Base\Enums\BaseStatusEnum;

class PublicController extends BaseController
{

    /**
     * @var ProjectsInterface
     */
    protected $serviesRepository;

    /**
     * PublicController constructor.
     * @param ProjectsInterface $serviesRepository
     */
    public function __construct(
        ProjectsInterface $serviesRepository,
    ) {
        $this->serviesRepository = $serviesRepository;
    }

    public function getProjects($lang)
    {

        \App::setLocale($lang);

        $projects = $this->serviesRepository->getAllProjects();

        SeoHelper::setTitle(__("Projects"))
            ->setDescription(__("Projects"));

        $meta = new SeoOpenGraph;

        $meta->setDescription(__("Projects"));
        $meta->setUrl('/'. $lang .'/Projects/');
        $meta->setTitle(__("Projects"));
        $meta->setType('Projects');

        SeoHelper::setSeoOpenGraph($meta);


        return Theme::scope('projects.overview',['projects'=>$projects] ,'plugins/projects::projects')
        ->render();
    }

    public function getProject($lang , $slug)
    {

        \App::setLocale($lang);

        if (!$slug) {
            abort(404);
        }

        $project = Projects::where(['slug' => $slug])->where('status', BaseStatusEnum::PUBLISHED)->first();
        $projects = $this->serviesRepository->advancedGet([
            'condition' => [
            ],
            'order_by'  => ['created_at' => 'DESC'],
        ]);

        if (!$project) {
            abort(404);
        }

        SeoHelper::setTitle($project->name)
            ->setDescription($project->name);

        $meta = new SeoOpenGraph;

        $meta->setDescription($project->name);
        $meta->setUrl('/'. $lang .'/project/'. $project->slug);
        $meta->setTitle($project->name);
        $meta->setType('Projects');

        SeoHelper::setSeoOpenGraph($meta);


        return Theme::scope('project',['project'=>$project, 'projects' => $projects] ,'plugins/projects::project')
        ->render();
    }

}
