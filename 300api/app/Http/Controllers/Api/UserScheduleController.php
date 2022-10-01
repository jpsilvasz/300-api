<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use App\Models\Schedule;

class UserScheduleController extends Controller
{   
    private $schedule;

    public function __construct(Schedule $schedule){
        $this->schedule = $schedule;
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function index(User $user)
    {
        return Schedule::query()
        ->where('user_id', '=', $user->id)
        ->with('services' , function($query){
            $query->select('price','description','id');
        })
        ->get();
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        return $this->schedule->create($request->all());
    }

    /**
     * Display the specified resource.
     *
     * @param  Schedule  $schedule
     * @return \Illuminate\Http\Response
     */
    public function show(Schedule $schedule)
    {
        return $schedule;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  Schedule $schedule
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Schedule $schedule)
    {
        $schedule -> update($request->all());

        return $schedule;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  Schedule  $schedule
     * @return \Illuminate\Http\Response
     */
    public function destroy(Schedule $schedule)
    {
        return $schedule->delete();
    }
}
