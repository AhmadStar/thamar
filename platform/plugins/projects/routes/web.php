<?php

use Botble\Base\Facades\BaseHelper;
use Illuminate\Support\Facades\Route;

Route::group(['namespace' => 'Botble\Projects\Http\Controllers', 'middleware' => ['web', 'core']], function () {

    Route::group(['prefix' => BaseHelper::getAdminPrefix(), 'middleware' => 'auth'], function () {

        Route::group(['prefix' => 'projects', 'as' => 'projects.'], function () {
            Route::resource('', 'ProjectsController')->parameters(['' => 'projects']);
        });
    });

});
