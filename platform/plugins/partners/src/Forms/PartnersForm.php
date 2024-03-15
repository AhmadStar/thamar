<?php

namespace Botble\Partners\Forms;

use Botble\Base\Forms\FormAbstract;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Ecommerce\Models\Circuit;
use Botble\Partners\Http\Requests\PartnersRequest;
use Botble\Partners\Models\Partners;
use Botble\Language\Models\Language;
use Kris\LaravelFormBuilder\Filters\Collection\Uppercase;

class partnersForm extends FormAbstract
{

    /**
     * {@inheritDoc}
     */
    public function buildForm()
    {

        $this

            ->setupModel(new partners)
            ->setValidatorClass(PartnersRequest::class)
            ->withCustomFields()
            ->add('style1', 'html', [
                'html' => '<div class="col-12"><div class="row">',
            ])
            ->add('name', 'text', [
                'label' => trans('plugins/partners::partners.name'),
                'label_attr' => ['class' => 'control-label'],
                'default_value' => false,
                'wrapper' => [
                    'class' => 'form-group col-12 col-sm-12 ',
                ],
            ])

            ->add('link', 'text', [
                'label' => trans('plugins/partners::partners.link'),
                'label_attr' => ['class' => 'control-label'],
                'default_value' => false,
                'wrapper' => [
                    'class' => 'form-group col-12 col-sm-12 ',
                ],
            ])

            ->add('style4', 'html', [
                'html' => '</div></div>',
            ])

            ->add('logo', 'mediaImage', [
                'label' => trans('plugins/partners::partners.logo'),
                'label_attr' => ['class' => 'control-label'],
            ])
            ->setBreakFieldPoint('logo');
    }
}
