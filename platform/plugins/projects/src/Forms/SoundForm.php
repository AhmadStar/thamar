<?php

namespace Botble\Projects\Forms;

use Botble\Base\Forms\FormAbstract;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Projects\Http\Requests\SoundRequest;
use Botble\Projects\Models\Sound;
use Botble\Projects\Models\Projects;

class SoundForm extends FormAbstract
{

    /**
     * {@inheritDoc}
     */
    public function buildForm()
    {

        $projects = Projects::getAll();

        $this
            ->setupModel(new Sound)
            ->setValidatorClass(SoundRequest::class)
            ->withCustomFields()
            ->add('name', 'text', [
                'label'      => trans('core/base::forms.name'),
                'label_attr' => ['class' => 'control-label required'],
                'attr'       => [
                    'placeholder'  => trans('core/base::forms.name_placeholder'),
                    'data-counter' => 120,
                ],
            ])
            ->add('sound', 'mediaFile', [
                'label'      => 'Sound',
                'label_attr' => ['class' => 'control-label required'],
                'attr'       => [
                    'placeholder'  => 'Sound',
                ],
            ])
            ->add('project_id', 'select', [
                'label'      => __('Project'),
                'label_attr' => ['class' => 'control-label required'],
                'choices'    => $projects,
            ])->add('vimeo', 'text', [
                'label'      => 'vimeo',
                'label_attr' => ['class' => 'control-label required'],
                'attr'       => [
                    'placeholder'  => 'vimeo',
                    'data-counter' => 120,
                ],
            ])->add('youtube', 'text', [
                'label'      => 'youtube',
                'label_attr' => ['class' => 'control-label required'],
                'attr'       => [
                    'placeholder'  => 'youtube',
                    'data-counter' => 120,
                ],
            ])->add('soundcloud', 'text', [
                'label'      => 'soundcloud',
                'label_attr' => ['class' => 'control-label required'],
                'attr'       => [
                    'placeholder'  => 'soundcloud',
                    'data-counter' => 120,
                ],
            ])

            ->add('status', 'customSelect', [
                'label'      => trans('core/base::tables.status'),
                'label_attr' => ['class' => 'control-label required'],
                'attr'       => [
                    'class' => 'form-control select-full',
                ],
                'choices'    => BaseStatusEnum::labels(),
            ])
            ->setBreakFieldPoint('status');
    }
}
