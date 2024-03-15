<?php

namespace Botble\Projects\Repositories\Interfaces;
use Botble\Support\Repositories\Interfaces\RepositoryInterface;

interface ProjectsInterface extends RepositoryInterface
{
    public function getDataSiteMap();

    public function getAllProjects();

}
