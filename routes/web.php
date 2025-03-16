<?php

use App\Http\Controllers\NewsController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

//Route::get('/news','NewsController@getNews')->name('news'); // old way
Route::get('/', [NewsController::class, 'fetchAndStoreNews']);
//Show News
Route::get('/', [NewsController::class, 'showNews']);
//Show Search News
Route::get('/news', [NewsController::class, 'showSearchNews']);

