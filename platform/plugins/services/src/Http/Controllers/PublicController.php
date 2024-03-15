<?php

namespace Botble\Services\Http\Controllers;

use Aws\Api\Service;
use Botble\Base\Http\Controllers\BaseController;
use Botble\Services\Repositories\Interfaces\ServicesInterface;
use SeoHelper;
use Botble\SeoHelper\SeoOpenGraph;
use Botble\Services\Models\Services;
use Theme;
use Botble\Base\Enums\BaseStatusEnum;

class PublicController extends BaseController
{

    /**
     * @var ServicesInterface
     */
    protected $serviesRepository;

    /**
     * PublicController constructor.
     * @param ServicesInterface $serviesRepository
     */
    public function __construct(
        ServicesInterface $serviesRepository,
    ) {
        $this->serviesRepository = $serviesRepository;
    }

    public function getServices($lang)
    {

        \App::setLocale($lang);

        $services = $this->serviesRepository->getAllServices();

        SeoHelper::setTitle(__("Services"))
            ->setDescription(__("Services"));

        $meta = new SeoOpenGraph;

        $meta->setDescription(__("Services"));
        $meta->setUrl('/'. $lang .'/services/');
        $meta->setTitle(__("Services"));
        $meta->setType('Service');

        SeoHelper::setSeoOpenGraph($meta);


        return Theme::scope('services.overview',['services'=>$services] ,'plugins/services::services')
        ->render();
    }

    public function getService($lang , $slug)
    {

        \App::setLocale($lang);

        if (!$slug) {
            abort(404);
        }

        $service = Services::where(['slug' => $slug])->where('status', BaseStatusEnum::PUBLISHED)->first();
        $services = $this->serviesRepository->advancedGet([
            'condition' => [
            ],
            'order_by'  => ['created_at' => 'DESC'],
        ]);

        if (!$service) {
            abort(404);
        }

        SeoHelper::setTitle($service->name)
            ->setDescription($service->name);

        $meta = new SeoOpenGraph;

        $meta->setDescription($service->name);
        $meta->setUrl('/'. $lang .'/service/'. $service->slug);
        $meta->setTitle($service->name);
        $meta->setType('Service');

        SeoHelper::setSeoOpenGraph($meta);


        return Theme::scope('service',['service'=>$service, 'services' => $services] ,'plugins/services::service')
        ->render();
    }

}
