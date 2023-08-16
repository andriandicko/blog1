<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AuthController extends Controller
{
    public function index(){
        return view('auth.login', ['title' => 'Login', 'isAuthPage' => true]);
    }

    public function signIn(Request $request){
        $data = $request->validate([
            'email' => 'required',
            'password' => 'required'
        ]);
        if(Auth::attempt($data)){
            return redirect("/");
        }else{
            return redirect()->route('login')->with('message', 'Email atau Password salah');
        }
    }
}
