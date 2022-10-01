<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Service extends Model
{
    use HasFactory;

    protected $fillable = [
        'price',
        'description',
    ];

    public function schedules()
   {
    return $this->belongsTo(Schedule::class, 'service_id', 'price');
   }

    public function getPriceAtribute()
    {
        return $this->attributes['price'] /100;
    }

    public function setPriceAtribute($attr)
    {
        return $this->attributes['price'] = $attr * 100;
    }

}

