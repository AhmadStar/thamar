<?php

namespace Botble\Projects\Repositories\Eloquent;

use Botble\Support\Repositories\Eloquent\RepositoriesAbstract;
use Botble\Projects\Repositories\Interfaces\SoundInterface;
use Botble\Base\Enums\BaseStatusEnum;

class SoundRepository extends RepositoriesAbstract implements SoundInterface
{
    /**
     * {@inheritDoc}
     */
    public function getProjecysSounds($id)
    {
        $data = $this->model->with('slugable')->where([
            'projects.service_id'     => $id,
            'projects.status' => BaseStatusEnum::PUBLISHED,
        ]);

        return $this->applyBeforeExecuteQuery($data, true)->get();
    }
}
