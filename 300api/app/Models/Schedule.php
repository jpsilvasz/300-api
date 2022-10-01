<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\User;
use App\Models\Service;

class Schedule extends Model
{
    use HasFactory;

    protected $fillable = [
        'dma',
        'service_id',
        'user_id',
    ];

    public function users()
    {
        return $this->belongsTo(User::class, 'user_id');
    }

    public function services()
    {
        return $this->belongsTo(Service::class, 'service_id');
    }
  
}
