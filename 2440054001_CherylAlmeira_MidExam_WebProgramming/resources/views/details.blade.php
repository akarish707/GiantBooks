@extends('main')

@section('content')
    <div class="card-header py-3">
        <h3 class="m-0 font-weight-bold text-black" style="background-color: #6069a8">Book Detail</h3>
    </div>
    <br>

    <div class="card card-details mb-5">
        <img src="{{ asset('Storage/image/'.$book->image) }}" class="card-img-top" alt="...">
        <div class="card-body">
            <h2 class="card-title">Title : {{$book->title}}</h2>
            <h5 class="card-text"> Author : {{$book->author}}</h5>
            <h5 class="card-text"> Publisher : {{$book->publisher->name}}</h5>
            <h5 class="card-text"> Year : {{$book->year}}</h5>
            <h5 class="card-text"> Sinopsis : </h5>
            <p class="card-text mb-5"> {{$book->sinopsis}}</p>
        </div>
    </div>
@endsection
