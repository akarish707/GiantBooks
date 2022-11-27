<?php

use App\Http\Controllers\AppController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/home',[AppController::class,'book']);

// Route::get('/category/{id}',[AppController::class,'category']);

// Route::get('/publisher',[AppController::class,'publisher']);

// Route::get('/details/{id}',[AppController::class,'details']);

// Route::get('/contact',[AppController::class,'contact']);

Route::get('/', [AppController::class,'books']);

Route::get('/details/{id}', [AppController::class,'details']);

Route::get('/category/{id}', [AppController::class, 'category']);

Route::get('/publisher', [AppController::class, 'publisher']);

Route::get('/publisher_detail/{id}', [AppController::class, 'publisher_detail']);

Route::get('/contact', [AppController::class, 'contact']);






