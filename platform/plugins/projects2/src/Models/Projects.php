<?php

namespace Botble\Projects\Models;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Models\BaseModel;
use Botble\Base\Traits\EnumCastable;
use Botble\Services\Models\Services;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Botble\Projects\Models\Sound;

class Projects extends BaseModel
{
    use EnumCastable;

    /**
     * The database table used by the model.
     *
     * @var string
     */
    protected $table = 'projects';

    /**
     * @var array
     */
    protected $fillable = [
        'name',
        'image',
        'summary',
        'youtube',
        'content',
        'company',
        'company_logo',
        'voice_banner',
        'company_link',
        'category_id',
        'gallery_id',
        'header_img',
        'service_id',
        'status',

    ];

    /**
     * @var array
     */
    protected $casts = [
        'status' => BaseStatusEnum::class,
    ];

    public static function getProjects($limit = 6)
    {
        return Projects::where(['status' => 'published'])->limit($limit)->orderBy('created_at', 'desc')->get();
    }

    /**
     * @return BelongsToMany
     */
    public function services()
    {
        return $this->belongsToMany(Services::class, 'project_services', 'project_id', 'service_id');
    }

    public function getYoutubeID()
    {
        parse_str(parse_url($this->youtube, PHP_URL_QUERY), $my_array_of_vars);
        return $my_array_of_vars['v'];
    }

    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    public function sounds()
    {
        return $this->hasMany(Sound::class, 'project_id');
    }

    public static function getAll(){
        return Projects::where(['status'=>'published'])->pluck('name', 'id')->toArray();
    }

}
