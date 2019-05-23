@extends('layouts.app')

@section('title','Resultados de búsqueda')

@section('body-class','profile-page')

@section('styles')
  <style media="screen">
    .team {
      padding: 50px;
    }
    .team .row .col-md-4{
        margin-bottom: 5em;
    }
    .team .row {
        display: -webkit-box;
        display: -webkit-flex;
        display: -ms-flexbox;
        display: flex;
        flex-wrap: wrap;
    }
    .team .row > [class*='col-'] {
        display: flex;
        flex-direction: column;
    }

  </style>

@endsection

@section('content')

<div class="header header-filter" style="background-image: url('/img/examples/city.jpg');"></div>

<div class="main main-raised">
    <div class="profile-content">
        <div class="container">
            <div class="row">
                <div class="profile">
                    <div class="avatar">
                        <img src="/img/search.jpg" alt="Imagen de una lupa que representa a la página de resultados" class="img-circle img-responsive img-raised">
                    </div>

                    <div class="name">
                        <h3 class="title">Resultados de búsqueda</h3>
                    </div>
                </div>
            </div>
            <div class="description text-center">
                <p>Se encontraron {{ $products->count() }} resultados para el término {{ $query }}  </p>
            </div>

            @if (session('notification'))
<!--            <div class="alert alert-success">
                    {{ session('notification') }}
                </div> -->
                <div class="alert alert-success">
                    <div class="container-fluid">
                      <div class="alert-icon">
                        <i class="material-icons">check</i>
                      </div>
                      <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true"><i class="material-icons">clear</i></span>
                      </button>
                      <b> Notificación: </b>{{ session('notification') }}
                    </div>
                </div>
            @endif

            <div class="team text-center">
                <div class="row">
                    @foreach ($products as $product)
                    <div class="col-md-4">
                        <div class="team-player">
                            <img src="{{ $product->featured_image_url }}" alt="Thumbnail Image" class="img-raised img-circle">
                            <h4 class="title">
                                <a href="{{ url('/products/'.$product->id) }}">{{ $product->name }}</a>
                            </h4>
                            <p class="description">{{ $product->description }}</p>
                        </div>
                    </div>
                    @endforeach
                </div>
                <div class="text-center">
                    {{ $products->links() }}
                </div>
            </div>
        </div>
    </div>
</div>

@include('includes.footer')
@endsection
