<?php

namespace Botble\Services\Models;

use Botble\Base\Casts\SafeContent;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Models\BaseModel;
use Illuminate\Database\Eloquent\Relations\BelongsTo;

/**
 * @method static \Botble\Base\Models\BaseQueryBuilder<static> query()
 */
class Services extends BaseModel
{
    protected $table = 'services';

    protected $fillable = [
        'name',
        'slug',
        'image',
        'service_type',
        'icon',
        'color',
        'content',
        'summary',
        'status',
    ];

    protected $casts = [
        'status' => BaseStatusEnum::class,
        'name' => SafeContent::class,
    ];

    public function serviceType(): BelongsTo
    {
        return $this->belongsTo(ServicesTypes::class, 'service_type');
    }
}
