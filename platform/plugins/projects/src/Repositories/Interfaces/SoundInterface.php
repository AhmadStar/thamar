<?php

namespace Botble\Projects\Repositories\Interfaces;

use Botble\Support\Repositories\Interfaces\RepositoryInterface;

interface SoundInterface extends RepositoryInterface
{
    /**
     * @param int $id
     * @return mixed
     */
    public function getProjecysSounds($id);
}
