<?php

use App\Http\Controllers\TestController;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

Route::view('/', 'welcome');

Route::redirect('/home', '/');

Route::get('/test', TestController::class);



// Route::get('posts', [PostController::class, 'index'])->name('posts');

// Route::get('posts/create', [PostController::class, 'create'])->name('posts.create');

// Route::post('posts', [PostController::class, 'store'])->name('posts.store');

// Route::get('posts/{post}', [PostController::class, 'show'])->name('posts.show');

// Route::get('posts/{post}/edit', [PostController::class, 'edit'])->name('posts.edit');

// Route::put('posts/{post}', [PostController::class, 'update'])->name('posts.update');

// Route::delete('posts{post}', [PostController::class, 'delete'])->name('posts.delete');

Route::resource('posts', PostController::class);


