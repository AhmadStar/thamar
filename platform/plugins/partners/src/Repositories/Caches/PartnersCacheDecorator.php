<?php

namespace Botble\Partners\Repositories\Caches;

use Botble\Support\Repositories\Caches\CacheAbstractDecorator;
use Botble\Partners\Repositories\Interfaces\PartnersInterface;

class PartnersCacheDecorator extends CacheAbstractDecorator implements PartnersInterface
{


public function  getPartners($limit=5){
    return $this->getDataIfExistCache(__FUNCTION__, func_get_args());
}

}
