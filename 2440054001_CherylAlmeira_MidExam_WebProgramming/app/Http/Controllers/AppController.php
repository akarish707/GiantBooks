<?php

namespace App\Http\Controllers;

use App\Models\Books;
use App\Models\Category;
use App\Models\Publisher;
use Illuminate\Http\Request;

class AppController extends Controller
{
    public function books () {
        $books = Books::all();
        $categories = Category::all();
        return view('home', ['books'=>$books, 'categories'=>$categories]);
    }

    public function details ($id) {
        $book = Books::find($id);
        $categories = Category::all();
        return view('details', ['book'=>$book, 'categories'=>$categories]);
    }

    public function publisher_detail ($id) {
        $publishers = Publisher::find($id);
        $categories = Category::all();
        // dd($publishers);
        return view('publisher_detail', ['publishers'=>$publishers, 'categories'=>$categories]);
    }

    public function category ($id) {
        $categories = Category::all();
        $category = Category::find($id);

        return view('category', ['category'=>$category, 'categories'=>$categories]);
    }

    public function publisher () {
        $categories = Category::all();
        $publishers = Publisher::all();

        return view('publisher', ['publishers'=>$publishers, 'categories'=>$categories]);
    }

    public function contact () {
        $categories = Category::all();

        return view('contact', ['categories'=>$categories]);
    }
}
