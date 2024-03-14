<?php

Route::group(['namespace' => 'Botble\Projects\Http\Controllers', 'middleware' => 'web'], function () {

    Route::group(['prefix' => BaseHelper::getAdminPrefix(), 'middleware' => 'auth'], function () {

        Route::group(['prefix' => 'projects', 'as' => 'projects.'], function () {
            Route::resource('', 'ProjectsController')->parameters(['' => 'projects']);

            Route::get('categories',
                [
                    'as'         => 'categories.index',
                    'uses'       => 'ProjectsController@categoriesIndex',
                    'permission' => 'projects.categories',
                ]);
            Route::delete('items/destroy', [
                'as'         => 'deletes',
                'uses'       => 'ProjectsController@deletes',
                'permission' => 'projects.destroy',
            ]);
        });
    });

});



Route::group(['namespace' => 'Botble\Projects\Http\Controllers', 'middleware' => ['web']], function () {

    Route::group(['prefix' => BaseHelper::getAdminPrefix(), 'middleware' => 'auth'], function () {

        Route::group(['prefix' => 'sounds', 'as' => 'sound.'], function () {
            Route::resource('', 'SoundController')->parameters(['' => 'sound']);
            Route::delete('items/destroy', [
                'as'         => 'deletes',
                'uses'       => 'SoundController@deletes',
                'permission' => 'sound.destroy',
            ]);
        });
    });

});

