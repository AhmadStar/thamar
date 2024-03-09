<?php

namespace Botble\Projects\Repositories\Eloquent;

use Botble\Support\Repositories\Eloquent\RepositoriesAbstract;
use Botble\Projects\Repositories\Interfaces\ProjectsInterface;
use Botble\Base\Enums\BaseStatusEnum;

class ProjectsRepository extends RepositoriesAbstract implements ProjectsInterface
{
    /**
     * {@inheritDoc}
     */
    public function getProjectsByServiceId($id)
    {

        $data = $this->model
            ->where('projects.status', BaseStatusEnum::PUBLISHED)
            ->where('projects.service_id', $id)
            ->select('projects.*')
            ->orderBy('projects.id', 'desc');

        return $this->applyBeforeExecuteQuery($data)->get();

    }
}
