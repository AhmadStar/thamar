<?php

namespace Botble\Projects\Models;

use Botble\Base\Traits\EnumCastable;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Models\BaseModel;

class Sound extends BaseModel
{
    use EnumCastable;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'sounds';

    /**
     * @var array
     */
    protected $fillable = [
        'name',
        'sound',
        'project_id',
        'vimeo',
        'youtube',
        'soundcloud',
        'status',
    ];

    /**
     * @var array
     */
    protected $casts = [
        'status' => BaseStatusEnum::class,
    ];


    public function project()
    {
        return $this->belongsTo(Projects::class);
    }

}
