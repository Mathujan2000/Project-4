<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Oefening extends Model
{
    use HasFactory;
    protected $table = 'oefeningen';
    public $timestamps = false;

    // Beschermde velden
    protected $fillable = [
        'naam', 'beschrijving', 'foto',
    ];

}
