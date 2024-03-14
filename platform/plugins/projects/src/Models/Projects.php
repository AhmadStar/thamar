<?php

namespace Botble\Projects\Models;

use Botble\Base\Casts\SafeContent;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Models\BaseModel;

/**
 * @method static \Botble\Base\Models\BaseQueryBuilder<static> query()
 */
class Projects extends BaseModel
{
    protected $table = 'projects';

    protected $fillable = [
        'name',
        'image',
        'summary',
        'content',
        'company',
        'company_logo',
        'company_link',
        'service_id',
        'status',
    ];

    protected $casts = [
        'status' => BaseStatusEnum::class,
        'name' => SafeContent::class,
    ];
}
