<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BooksCategory extends Model
{
    
    protected $table="books_categories";
    protected $guarded=[];
    
    use HasFactory;
}
