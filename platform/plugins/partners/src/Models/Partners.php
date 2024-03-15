<?php

namespace Botble\Partners\Models;

use Botble\Base\Traits\EnumCastable;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Models\BaseModel;
use Botble\Partners\Repositories\Interfaces\PartnersInterface;

class Partners extends BaseModel
{
    use EnumCastable;

     /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'partners';

    /**
     * @var array
     */
    protected $fillable = [
        'name',
        'logo',
        'link',
    ];


/**
     * @var array
     */
    protected $casts = [
        'status' => BaseStatusEnum::class,
    ];
    public static function getPartners()
    {

        $repo = app(PartnersInterface::class);
        $limit=100;
        $partners  = $repo->getPartners($limit);
        return $partners;
    }

}
