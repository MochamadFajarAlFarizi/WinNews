<?php
use Illuminate\Support\Facades\Route;

// Route untuk halaman utama
Route::get('/', function () {
    return view('index');
})->name('home');

// Route untuk halaman News
Route::get('/news', function () {
    return view('news');
})->name('news');

// Route untuk halaman Domestic
Route::get('/domestic', function () {
    return view('domestic');
})->name('domestic');

// Route untuk halaman Trending
Route::get('/trending', function () {
    return view('trending');
})->name('trending');
