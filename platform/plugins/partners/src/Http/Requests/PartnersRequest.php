<?php

namespace Botble\Partners\Http\Requests;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\Support\Http\Requests\Request;
use Illuminate\Validation\Rule;

class PartnersRequest extends Request
{

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name'   => 'required',
            'logo'   => 'required',
            'status' => Rule::in(BaseStatusEnum::values()),
        ];
    }
}
