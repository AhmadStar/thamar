<?php

namespace Botble\Projects\Repositories\Eloquent;

use Botble\Support\Repositories\Eloquent\RepositoriesAbstract;
use Botble\Projects\Repositories\Interfaces\ProjectsInterface;
use Botble\Base\Enums\BaseStatusEnum;

class ProjectsRepository extends RepositoriesAbstract implements ProjectsInterface
{
    public function getDataSiteMap()
    {
        $data = $this->model

            ->where('status', BaseStatusEnum::PUBLISHED)
            ->orderBy('created_at', 'desc');

        return $this->applyBeforeExecuteQuery($data)->get();
    }

    public function getAllProjects()
    {
        $data = $this->model
            ->where('status', BaseStatusEnum::PUBLISHED)
            ->orderBy('created_at', 'ASC');

        return $this->applyBeforeExecuteQuery($data)->get();
    }


}
