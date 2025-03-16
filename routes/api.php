<?php
use App\Http\Controllers\Api\NewsController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

// News Data Api With Query
Route::get('/news/{search}', [NewsController::class, 'search']);

// Api Calling Routes
Route::prefix('news')->group(function () {
    Route::get('/', [NewsController::class, 'index']);     // Get all news
    Route::get('/{id}', [NewsController::class, 'show']);  // Get single news
    Route::post('/', [NewsController::class, 'store']);    // Create news
    Route::put('/{id}', [NewsController::class, 'update']); // Update news
    Route::delete('/{id}', [NewsController::class, 'destroy']); // Delete news
});

Route::get('/user', function (Request $request) {
    return $request->user();
})->middleware('auth:sanctum');

