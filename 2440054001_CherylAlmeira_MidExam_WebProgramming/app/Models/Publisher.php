<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Publisher extends Model
{
    protected $table="publishers";
    protected $guarded=[];

    public function books() {
        return $this->hasMany(Books::class);
    }

    use HasFactory;
}
