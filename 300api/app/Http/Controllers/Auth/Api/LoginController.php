<?php

namespace App\Http\Controllers\Auth\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class LoginController extends Controller
{
public function login(Request $request)
{
    $credentials = $request->only('phone', 'password');

    if($credentials['phone'] == env('ADMIN_PHONE')&& $credentials['password'] == env('ADMIN_PASS')){
        return response()->json([
            'data' => [
                'admin' => true,
            ]
            ],201);
    }

    if(!auth()->attempt($credentials)) 
    abort(401, 'Invalid Credentials');

    $token = auth()->user()->createToken('auth_token');

    return response()->json([
        'data' => [
            'token' => $token->plainTextToken
        ]
        ]);
}

    public function logout()
    {
        auth()->user()->currentAccessToken()->delete();  

        return response()->json(['sucess'],204);
    }
}
