<?php

namespace Botble\Services\Repositories\Caches;

use Botble\Support\Repositories\Caches\CacheAbstractDecorator;
use Botble\Services\Repositories\Interfaces\ServicesInterface;

class ServicesCacheDecorator extends CacheAbstractDecorator implements ServicesInterface
{
    public function getDataSiteMap(){
        return $this->getDataIfExistCache(__FUNCTION__, func_get_args());
    }

    public function getAllServices(){
        return $this->getDataIfExistCache(__FUNCTION__, func_get_args());
    }
}
