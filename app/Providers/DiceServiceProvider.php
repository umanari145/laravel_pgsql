<?php

namespace App\Providers;
use App\RollableDice;
use App\Dice;
use App\LoadDice;

use Illuminate\Support\ServiceProvider;

class DiceServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap the application services.
     *
     * @return void
     */
    public function boot()
    {
        //
    }

    /**
     * Register the application services.
     *
     * @return void
     */
    public function register()
    {
        $this->app->bind(RollableDice::class, function ($app){
            //依存性の注入
            //return new Dice();
            return new LoadDice();
        });
    }
}
