<?php

namespace Botble\Projects\Forms;

use Botble\Base\Forms\FormAbstract;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Blog\Forms\Fields\CategoryMultiField;
use Botble\Gallery\Models\Gallery;
use Botble\Projects\Http\Requests\ProjectsRequest;
use Botble\Projects\Models\Category;
use Botble\Projects\Models\Projects;
use Botble\Services\Models\Services;
use Botble\Projects\Forms\Fields\ServicesMultiField;
class ProjectsForm extends FormAbstract
{

    /**
     * {@inheritDoc}
     */
    public function buildForm()
    {
        $galleries = Gallery::getAll();
        $services = Services::getAllLangServices();//get_services_choices();
        $categories = Category::getALl();
        $selectedServices = [];
        if (!$this->formHelper->hasCustomField('servicesMulti')) {
            $this->formHelper->addCustomField('servicesMulti', ServicesMultiField::class);
        }

        if ($this->getModel()) {

            $temp = $this->getModel()->services;
            foreach($temp as $item){
                $selectedServices[] = $item->id;
            }
        }

        $this
            ->setupModel(new Projects)
            ->setValidatorClass(ProjectsRequest::class)
            ->withCustomFields()
            ->add('image', 'mediaImage', [
                'label' => __('Image'),
                'label_attr' => ['class' => 'control-label'],
            ])


            ->add('name', 'text', [
                'label'      => trans('core/base::forms.name'),
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
                    'with-short-code' => false, // if true, it will add a button to select shortcode
                    'without-buttons' => false, // if true, all buttons will be hidden
                ],
            ])
            ->add('company_logo', 'mediaImage', [
                'label' => __('Company Logo'),
                'label_attr' => ['class' => 'control-label'],
            ])
            ->add('company', 'text', [
                'label'      => __('Company Name'),
                'label_attr' => ['class' => 'control-label required'],
                'attr'       => [
                    'data-counter' => 120,
                ],
            ])
            ->add('company_link', 'text', [
                'label'      => __('Company Link'),
                'label_attr' => ['class' => 'control-label required'],
                'attr'       => [
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
           
            
            ->add('services[]', 'servicesMulti', [
                'label'      => trans('Services'),
                'label_attr' => ['class' => 'control-label required'],
                'choices'    => $services,
                'value'      => old('services', $selectedServices),
            ])
            ->setBreakFieldPoint('status');
    }
}
