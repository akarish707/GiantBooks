<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $table="categories";
    protected $guarded=[];

    public function books() {
        return $this->belongsToMany(Books::class, 'books_categories');
    }

    use HasFactory;
   
}
