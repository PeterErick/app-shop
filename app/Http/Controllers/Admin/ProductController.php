<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use App\Product;
use App\Category;
use App\ProductImage;

class ProductController extends Controller
{
    public function index()
    {
    	$products = Product::paginate(10);
		return view('admin.products.index')->with(compact('products')); //listado
    }
    public function create()
    {
      $categories = Category::orderBy('name')->get();
      return view('admin.products.create')->with(compact('categories')); //formulario de registro
    }
    public function store(Request $request)
    {
      /*dd($request->all());*/

      // validar
      $messages=[
        'name.required' => 'Es necesario ingresar un nombre para el producto.',
        'name.min' => 'El nombre del producto debe tener al menos 3 caracteres.',
        'description.required' => 'La descripción corta es obligatoria.',
        'description.max' => 'La descripción corta solo admite hasta 200 caracteres.',
        'price.required'=>'Es obligatorio definir un precio para el producto.',
        'price.numeric'=>'Ingrese un precio valido.',
        'price.min'=>'No se admiten precios negativos.'
      ];
      $rules = [
        'name' => 'required|min:3',
        'description' => 'required|max:200',
        'price' => 'required|numeric|min:0'
      ];
      $this->validate($request, $rules,$messages);

      //registrar el nuevo producto en la bd
    	$product = new Product();
    	$product->name = $request->input('name');
    	$product->description = $request->input('description');
    	$product->price = $request->input('price');
    	$product->long_description = $request->input('long_description');
      $product->category_id = $request->category_id;
    	$product->save(); /*INSERT*/

    	return redirect('/admin/products');

    }
	public function edit($id)
    {
    	/*return "Mostrar aqui el form de edición para el producto con id $id";	*/
      $categories = Category::orderBy('name')->get();
      $product = Product::find($id);
 		  return view('admin.products.edit')->with(compact('product','categories')); //formulario de edición
    }
    public function update(Request $request, $id) //actualizacion
    {
      // validar
      $messages=[
        'name.required' => 'Es necesario ingresar un nombre para el producto.',
        'name.min' => 'El nombre del producto debe tener al menos 3 caracteres.',
        'description.required' => 'La descripción corta es obligatoria.',
        'description.max' => 'La descripción corta solo admite hasta 200 caracteres.',
        'price.required'=>'Es obligatorio definir un precio para el producto.',
        'price.numeric'=>'Ingrese un precio valido.',
        'price.min'=>'No se admiten precios negativos.'
      ];
      $rules = [
        'name' => 'required|min:3',
        'description' => 'required|max:200',
        'price' => 'required|numeric|min:0'
      ];
      $this->validate($request, $rules,$messages);
    	//registrar el nuevo producto en la bd
    	/*dd($request->all());*/
    	$product = Product::find($id);
    	$product->name = $request->input('name');
    	$product->description = $request->input('description');
    	$product->price = $request->input('price');
    	$product->long_description = $request->input('long_description');
      $product->category_id = $request->category_id;
    	$product->save(); /*UPDATE*/

    	return redirect('/admin/products');
    }
    public function destroy($id) //actualizacion
    {

      ProductImage::where('product_id', $id)->delete();

    	$product = Product::find($id);
        $product->delete(); /*DELETE*/
        // $product->foreign('product_id')->references('id')->on('product_images')->onDelete('cascade');

    	return back();
    }

    public function show($id)
    {
        $product = Product::find($id); //buscamos el producto
        $images = $product->images; //traemos las images del producto

        $imagesLeft = Collect(); //creamos una coleccion de imagenes para la parte izq
        $imagesRight = Collect(); //creamos una coleccion de imagenes para la parte der

        foreach ($images as $key => $image) {
            if($key%2==0)
                $imagesLeft->push($image);
            else
                $imagesRight->push($image);

        }

        return view('products.show')->with(compact('product','imagesLeft','imagesRight','notification')); //pasamos a la vista
    }

}
