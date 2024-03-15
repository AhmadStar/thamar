<?php

namespace Botble\Services\Repositories\Interfaces;
use Illuminate\Support\Collection;
use Botble\Support\Repositories\Interfaces\RepositoryInterface;

interface ServicesInterface extends RepositoryInterface
{
    public function getDataSiteMap();

    public function getAllServices();

}
