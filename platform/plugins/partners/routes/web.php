<?php

Route::group(['namespace' => 'Botble\Partners\Http\Controllers', 'middleware' => ['web', 'core']], function () {

    Route::group(['prefix' => BaseHelper::getAdminPrefix(), 'middleware' => 'auth'], function () {

        Route::group(['prefix' => 'partners', 'as' => 'partners.'], function () {
            Route::resource('', 'PartnersController')->parameters(['' => 'partners']);
            Route::delete('items/destroy', [
                'as'         => 'deletes',
                'uses'       => 'PartnersController@deletes',
                'permission' => 'partners.destroy',
            ]);
        });
    });

});
