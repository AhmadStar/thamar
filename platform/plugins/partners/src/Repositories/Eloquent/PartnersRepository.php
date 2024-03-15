<?php

namespace Botble\Partners\Repositories\Eloquent;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\Support\Repositories\Eloquent\RepositoriesAbstract;
use Botble\Partners\Repositories\Interfaces\PartnersInterface;

class PartnersRepository extends RepositoriesAbstract implements PartnersInterface
{

    public function getPartners($limit=5)
    {

        $data = $this->model
            // ->with('slugable')
            //->orderBy('partners.created_at', 'desc')
            ->orderBy('partners.featured', 'desc')
            ->select('partners.*')
            //->orderBy('featured','DESC')
            // ->where('partners.status', BaseStatusEnum::PUBLISHED)
            ->limit($limit);



        return $this->applyBeforeExecuteQuery($data)->get();
    }
}
