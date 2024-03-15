<?php

use Botble\Base\Facades\BaseHelper;
use Illuminate\Support\Facades\Route;

Route::group(['namespace' => 'Botble\Services\Http\Controllers', 'middleware' => ['web', 'core']], function () {

    Route::group(['prefix' => BaseHelper::getAdminPrefix(), 'middleware' => 'auth'], function () {

        Route::group(['prefix' => 'services', 'as' => 'services.'], function () {
            Route::resource('', 'ServicesController')->parameters(['' => 'services']);
        });
    });


    Route::group(['prefix' => '{language}'], function () {
        Route::get('services', [
            'as'   => 'services',
            'uses' => 'PublicController@getServices',
        ]);
    })->where('language', 'en|ar');

    Route::group(['prefix' => '{language}'], function () {
        Route::get('service/{slug}', [
            'as'   => 'service',
            'uses' => 'PublicController@getService',
        ]);
    })->where('language', 'en|ar');

});
