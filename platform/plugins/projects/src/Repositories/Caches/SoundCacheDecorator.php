<?php

namespace Botble\Projects\Repositories\Caches;

use Botble\Support\Repositories\Caches\CacheAbstractDecorator;
use Botble\Projects\Repositories\Interfaces\SoundInterface;

class SoundCacheDecorator extends CacheAbstractDecorator implements SoundInterface
{
    /**
     * {@inheritDoc}
     */
    public function getProjecysSounds($id)
    {
        return $this->flushCacheAndUpdateData(__FUNCTION__, func_get_args());
    }

}
