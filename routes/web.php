<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\NewsController;
use App\Http\Controllers\IndexController;
use App\Http\Controllers\Admin\NewsController as AdminNewsController;

// Route untuk halaman utama
Route::get('/', [IndexController::class, 'index'])->name('home');

// Route untuk halaman News
Route::get('/news', [NewsController::class, 'index'])->name('news');

// Route untuk halaman Domestic
Route::get('/domestic', [NewsController::class, 'domestic'])->name('domestic');

// Route untuk halaman Trending
Route::get('/trending', [NewsController::class, 'trending'])->name('trending');

// Route untuk halaman Detail
Route::get('/detail/{id}', [NewsController::class, 'show'])->name('detail');

// Group Routes for Admin Panel
Route::prefix('admin')->name('admin.')->middleware('auth')->group(function () {
    // Admin Dashboard
    Route::get('/', function () {
        return view('admin.dashboard');
    })->name('dashboard');

    // CRUD Routes for News
    Route::resource('news', AdminNewsController::class);
});
