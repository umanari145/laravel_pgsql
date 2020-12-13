<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\RollableDice;


class HomeController extends Controller
{

    private $dice;


    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct(RollableDice $dice)
    {
        $this->middleware('auth');
        $this->dice = $dice;
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    { 
        //diceのクラス変更の影響は受けない
        var_dump($this->dice->roll());
        return view('home');

    }
}
