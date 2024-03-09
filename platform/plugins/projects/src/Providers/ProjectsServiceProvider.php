<?php

namespace Botble\Projects\Providers;

use Botble\Projects\Models\Projects;
use Botble\Projects\Models\Sound;
use Illuminate\Support\ServiceProvider;
use Botble\Projects\Repositories\Caches\ProjectsCacheDecorator;
use Botble\Projects\Repositories\Eloquent\ProjectsRepository;
use Botble\Projects\Repositories\Interfaces\ProjectsInterface;
use Botble\Base\Supports\Helper;
use Event;
use Botble\Base\Traits\LoadAndPublishDataTrait;
use Illuminate\Routing\Events\RouteMatched;
use Botble\Projects\Repositories\Caches\SoundCacheDecorator;
use Botble\Projects\Repositories\Eloquent\SoundRepository;
use Botble\Projects\Repositories\Interfaces\SoundInterface;

class ProjectsServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    public function register()
    {
        $this->app->bind(ProjectsInterface::class, function () {
            return new ProjectsCacheDecorator(new ProjectsRepository(new Projects));
        });

        $this->app->bind(SoundInterface::class, function () {
            return new SoundCacheDecorator(new SoundRepository(new Sound));
        });

        Helper::autoload(__DIR__ . '/../../helpers');
    }

    public function boot()
    {
        $this->setNamespace('plugins/projects')
            ->loadAndPublishConfigurations(['permissions'])
            ->loadMigrations()
            ->loadAndPublishTranslations()
            ->loadRoutes(['web']);

        Event::listen(RouteMatched::class, function () {
            if (defined('LANGUAGE_MODULE_SCREEN_NAME')) {
                \Language::registerModule([Projects::class]);
            }

            dashboard_menu()->registerItem([
                'id'          => 'cms-plugins-projects',
                'priority'    => 5,
                'parent_id'   => null,
                'name'        => 'plugins/projects::projects.name',
                'icon'        => 'fa fa-object-group',
                'url'         => route('projects.index'),
                'permissions' => ['projects.index'],
            ])
                ->registerItem([
                    'id'          => 'cms-plugins-sound',
                    'priority'    => 5,
                    'parent_id'   => 'cms-plugins-projects',
                    'name'        => 'Sounds',
                    'icon'        => 'fa fa-list',
                    'url'         => route('sound.index'),
                    'permissions' => ['sound.index'],
                ])
               ->registerItem([
                   'id'          => 'cms-plugins-projects-1',
                   'priority'    => 2,
                   'parent_id'   => 'cms-plugins-projects',
                   'name'        => 'Projects',
                   'icon'        => 'fa fa-object-group',
                   'url'         => route('projects.index'),
                   'permissions' => ['projects.index'],
               ]);
        });
    }
}
