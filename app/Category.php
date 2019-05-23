<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{    // validar
    public static $messages=[
      'name.required' => 'Es necesario ingresar un nombre para la categoría.',
      'name.min' => 'El nombre de la categoría debe tener al menos 3 caracteres.',
      'description.required' => 'La descripción corta es obligatoria.',
      'description.max' => 'La descripción corta solo admite hasta 400 caracteres.',
    ];
    public static $rules = [
      'name' => 'required|min:3',
      'description' => 'required|max:400'
    ];

    protected $fillable = ['name','description'];

    public function products()
    {
    	return $this->hasMany(Product::class);
    }

    public function getFeaturedImageUrlAttribute()
    {
      $featuredProduct = $this->products()->first();
      return $featuredProduct->featured_image_url;
    }
}
