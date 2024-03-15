<?php

use Botble\Base\Facades\BaseHelper;
use Illuminate\Support\Facades\Route;

Route::group(['namespace' => 'Botble\Projects\Http\Controllers', 'middleware' => ['web', 'core']], function () {

    Route::group(['prefix' => BaseHelper::getAdminPrefix(), 'middleware' => 'auth'], function () {

        Route::group(['prefix' => 'projects', 'as' => 'projects.'], function () {
            Route::resource('', 'ProjectsController')->parameters(['' => 'projects']);
        });
    });

    Route::group(['prefix' => '{language}'], function () {
        Route::get('projects', [
            'as'   => 'projects',
            'uses' => 'PublicController@getProjects',
        ]);
    })->where('language', 'en|ar');

    Route::group(['prefix' => '{language}'], function () {
        Route::get('project/{slug}', [
            'as'   => 'project',
            'uses' => 'PublicController@getProject',
        ]);
    })->where('language', 'en|ar');

});
