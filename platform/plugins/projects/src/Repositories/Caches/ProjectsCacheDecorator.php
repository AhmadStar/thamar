<?php

namespace Botble\Projects\Repositories\Caches;

use Botble\Support\Repositories\Caches\CacheAbstractDecorator;
use Botble\Projects\Repositories\Interfaces\ProjectsInterface;

class ProjectsCacheDecorator extends CacheAbstractDecorator implements ProjectsInterface
{
    public function getDataSiteMap(){
        return $this->getDataIfExistCache(__FUNCTION__, func_get_args());
    }

    public function getAllProjects(){
        return $this->getDataIfExistCache(__FUNCTION__, func_get_args());
    }
}
