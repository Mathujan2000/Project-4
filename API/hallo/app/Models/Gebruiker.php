<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Gebruiker extends Model
{
    use HasFactory;
    public $timestamps = false;

    // Beschermde velden
    protected $fillable = [
        'naam', 
    ];

}
