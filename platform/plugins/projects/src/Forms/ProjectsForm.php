<?php

namespace Botble\Projects\Forms;

use Botble\Base\Forms\FormAbstract;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Projects\Http\Requests\ProjectsRequest;
use Botble\Projects\Models\Projects;

class ProjectsForm extends FormAbstract
{
    public function buildForm(): void
    {

        $services = Services::getAllLangServices();


        $this
            ->setupModel(new Projects)
            ->setValidatorClass(ProjectsRequest::class)
            ->withCustomFields()
            ->add('image', 'mediaImage', [
                'label' => __('Image'),
                'label_attr' => ['class' => 'control-label'],
            ])
            ->add('name', 'text', [
                'label' => trans('core/base::forms.name'),
                'label_attr' => ['class' => 'control-label required'],
                'attr'       => [
                    'placeholder'  => trans('core/base::forms.name_placeholder'),
                    'data-counter' => 120,
                ],
            ])
            ->add('summary', 'textarea', [
                'label'      =>__('Summary'),
                'label_attr' => ['class' => 'control-label required'],
                'attr'       => [

                    'data-counter' => 120,
                ],
            ])
            ->add('content', 'editor', [
                'label' => __('content'),
                'label_attr' => ['class' => 'control-label'],
                'attr' => [
                    'placeholder' => trans('core/base::forms.name_placeholder'),
                    'data-counter' => 120,
                ],
            ])
            ->add('status', 'customSelect', [
                'label' => trans('core/base::tables.status'),
                'label_attr' => ['class' => 'control-label required'],
                'attr' => [
                    'class' => 'form-control select-full',
                ],
                'choices'    => BaseStatusEnum::labels(),
            ])

            ->add('service_id', 'customSelect', [
                'label'      => trans('Service'),
                'label_attr' => ['class' => 'control-label required'],
                'choices'    => $services,

            ])
            ->setBreakFieldPoint('status');
    }
}
