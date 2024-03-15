<?php

namespace Botble\Services\Repositories\Eloquent;

use Botble\Support\Repositories\Eloquent\RepositoriesAbstract;
use Botble\Services\Repositories\Interfaces\ServicesInterface;
use Botble\Base\Enums\BaseStatusEnum;
use Illuminate\Support\Collection;

class ServicesRepository extends RepositoriesAbstract implements ServicesInterface
{
    public function getDataSiteMap()
    {
        $data = $this->model

            ->where('status', BaseStatusEnum::PUBLISHED)
            ->orderBy('created_at', 'desc');

        return $this->applyBeforeExecuteQuery($data)->get();
    }

    public function getAllServices()
    {
        $data = $this->model
            ->where('status', BaseStatusEnum::PUBLISHED)
            ->orderBy('created_at', 'ASC');

        return $this->applyBeforeExecuteQuery($data)->get();
    }


}
