<?php

namespace Botble\Projects\Providers;

use Botble\Projects\Models\Projects;
use Botble\Base\Facades\DashboardMenu;
use Botble\Base\Traits\LoadAndPublishDataTrait;
use Botble\Base\Supports\ServiceProvider;
use Illuminate\Routing\Events\RouteMatched;

class ProjectsServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    public function boot(): void
    {
        $this
            ->setNamespace('plugins/projects')
            ->loadHelpers()
            ->loadAndPublishConfigurations(['permissions'])
            ->loadMigrations()
            ->loadAndPublishTranslations()
            ->loadAndPublishViews()
            ->loadRoutes();

        if (defined('LANGUAGE_ADVANCED_MODULE_SCREEN_NAME')) {
            \Botble\LanguageAdvanced\Supports\LanguageAdvancedManager::registerModule(Projects::class, [
                'name',
            ]);
        }

        $this->app['events']->listen(RouteMatched::class, function () {
            DashboardMenu::registerItem([
                'id' => 'cms-plugins-projects',
                'priority' => 5,
                'parent_id' => null,
                'name' => 'plugins/projects::projects.name',
                'icon' => 'fa fa-list',
                'url' => route('projects.index'),
                'permissions' => ['projects.index'],
            ]);
        });
    }
}
