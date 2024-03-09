<?php

namespace Botble\Projects\Repositories\Interfaces;

use Botble\Support\Repositories\Interfaces\RepositoryInterface;

interface ProjectsInterface extends RepositoryInterface
{
    /**
     * @param int $id
     * @return mixed
     */
    public function getProjectsByServiceId($id);
}
