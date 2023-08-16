<?php

use App\Http\Controllers\CategoryController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\AuthController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/
Route::get('/login', [AuthController::class, 'index'])->name('login');

Route::get('/', function () {

    $data = [
        "title" => "Dashboard",
        "user" => [
            "name" => "<h5>Hallo, Dicko</h5>",
            "email" => "andriandicko@gmail.com",
        ]
        ];
    return view('contents.dashboard', $data);
});

Route::get('/users/create', [UserController::class, 'create']);
Route::get('/users', [UserController::class, 'index']);
Route::post('/users', [UserController::class, 'store']);
Route::get('/users/{id}/show', [UserController::class, 'show']);
Route::get('/users/{id}/edit', [UserController::class, 'edit']);
Route::put('/users/{id}', [UserController::class, 'update']);
Route::get('/users/{id}/delete', [UserController::class, 'delete']);

Route::resource('/categories', CategoryController::class);