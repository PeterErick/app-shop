<?php

namespace App\Http\Controllers\Admin;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

use App\Category;

class CategoryController extends Controller
{
  public function index()
  {
    $categories = Category::paginate(10);
  return view('admin.categories.index')->with(compact('categories')); //listado
  }
  public function create()
  {
  return view('admin.categories.create'); //formulario de registro
  }
  public function store(Request $request)
  {
    // validar
    $this->validate($request, Category::$rules, Category::$messages);

    //registrar el nuevo producto en la bd
    $category = new Category();
    $category->name = $request->input('name');
    $category->description = $request->input('description');
    $category->save(); /*INSERT*/

    return redirect('/admin/categories');

  }
  public function edit(Category $category )
  {
      return view('admin.categories.edit')->with(compact('category')); //formulario de edición
  }
  public function update(Request $request, Category $category) //actualizacion
  {

    $this->validate($request, Category::$rules, Category::$messages);
    //registrar el nuevo producto en la bd
    // dd($request->all());
    // $category = Category::find($id);
    // $category->name = $request->input('name');
    // $category->description = $request->input('description');
    // $category->save(); /*UPDATE*/

    $category->update($request->all());

    return redirect('/admin/categories');
  }
  public function destroy($id) //actualizacion
  {
    $category = Category::find($id);
    $category->delete(); /*DELETE*/
    return back();
  }

  public function show($id)
  {
      $category = Category::find($id); //buscamos el producto
      // $images = $category->images; //traemos las images del producto
      //
      // $imagesLeft = Collect(); //creamos una coleccion de imagenes para la parte izq
      // $imagesRight = Collect(); //creamos una coleccion de imagenes para la parte der
      //
      // foreach ($images as $key => $image) {
      //     if($key%2==0)
      //         $imagesLeft->push($image);
      //     else
      //         $imagesRight->push($image);
      //
      // }

      return view('categories.show')->with(compact('category','notification')); //pasamos a la vista
  }

}
