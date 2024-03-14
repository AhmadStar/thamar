<?php

namespace Botble\Projects\Repositories\Caches;

use Botble\Support\Repositories\Caches\CacheAbstractDecorator;
use Botble\Projects\Repositories\Interfaces\ProjectsInterface;

class ProjectsCacheDecorator extends CacheAbstractDecorator implements ProjectsInterface
{

    /**
     * {@inheritDoc}
     */
    public function getProjectsByServiceId($id)
    {
        return $this->flushCacheAndUpdateData(__FUNCTION__, func_get_args());
    }

}
