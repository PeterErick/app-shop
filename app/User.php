<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];


    //
    public function carts()
    {
        return $this->hasMany(Cart::class);
    }

    //cart_id
    public function getCartAttribute()
    {
        $cart = $this->carts()->where('status','Active')->first(); //traemos el carrito activo
        if($cart)
            return $cart; //mandamos el Id del carrito activo

        //else //si no existe uno creamos un carrito de compras activo para el usuario.
        $cart = new Cart();
        $cart->status='Active';
        $cart->user_id = $this->id;
        $cart->save();

        return $cart;

    }
}
