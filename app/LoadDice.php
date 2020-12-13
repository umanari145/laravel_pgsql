<?php

namespace App;


class LoadDice implements RollableDice {

    public function roll(): int 
    {
        return 9999;
    }
}