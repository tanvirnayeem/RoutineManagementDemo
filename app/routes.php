<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the Closure to execute when that URI is requested.
|
*/

Route::get('/',function(){

	return Redirect::route('dashboard');
});

Route::group(['before' => 'guest'], function(){
	Route::controller('password', 'RemindersController');
	Route::get('login', ['as'=>'login','uses' => 'AuthController@login']);
	Route::post('login', array('uses' => 'AuthController@doLogin'));
});

Route::group(array('before' => 'auth'), function()
{

	Route::get('logout', ['as' => 'logout', 'uses' => 'AuthController@logout']);
	Route::get('dashboard', array('as' => 'dashboard', 'uses' => 'AuthController@dashboard'));
	Route::get('change-password', array('as' => 'password.change', 'uses' => 'AuthController@changePassword'));
	Route::post('change-password', array('as' => 'password.doChange', 'uses' => 'AuthController@doChangePassword'));


});
Route::group(array('before'=>'auth|admin'),function(){

	Route::get('routinedemo',['as' => 'routinedemo.index', 'uses' => 'CourseTakenController@index']);
	Route::get('routinedemo/create',['as' => 'routinedemo.create', 'uses' => 'CourseTakenController@create']);
	Route::post('routinedemo/',['as' => 'routinedemo.store', 'uses' => 'CourseTakenController@store']);
	Route::get('routinedemo/{id}/edit',['as' => 'routinedemo.edit', 'uses' => 'CourseTakenController@edit']);
	Route::get('routinedemo/{id}/show',['as' => 'routinedemo.show', 'uses' => 'CourseTakenController@show']);
	Route::put('routinedemo/{id}',['as' => 'routinedemo.update', 'uses' => 'CourseTakenController@update']);
	Route::delete('routinedemo/{id}',['as' => 'routinedemo.delete', 'uses' => 'CourseTakenController@destroy']);
	Route::get('routinedemo/conflict',['as' => 'routinedemo.check', 'uses' => 'CourseTakenController@checkConfliction']);
});