<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PostController extends Controller
{
    public function index() {
        return 'Страница списка постов';
    }

    public function create() {
        return 'Страница создания поста';
    }
    
    public function store() {
        return 'Запрос создания поста';
    }

    public function show() {
        return 'Страница просмотра конкретного поста';
    }

    public function edit() {
        return 'Страница изменения поста';
    }

    public function update() {
        return 'Запрос обновления поста';
    }

    public function delete() {
        return 'Запрос удаления поста';
    }

    public function like() {
        return 'Лайк + 1';
    }
}
