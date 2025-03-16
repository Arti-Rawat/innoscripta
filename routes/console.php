<?php

use Illuminate\Foundation\Inspiring;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Support\Facades\Schedule;

Artisan::command('inspire', function () {
    $this->comment(Inspiring::quote());
})->purpose('Display an inspiring quote');

//Scheduler for updating news table everyMinute : php artisan schedule:work
Schedule::call(function () {
    app(\App\Http\Controllers\NewsController::class)->fetchAndStoreNews();
})->everyMinute();
