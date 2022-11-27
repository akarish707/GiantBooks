@extends('main')

@section('title', 'Giant Book Supplier - Category')

@section('content')
    <div class=”title”> {{$category->name}} </div>

    <div class="row row-cols-1 row-cols-md-3 g-4 mb-5">
        @foreach($category->books as $b)
            <div class="col mb-5 mt-5">
                <div class="card h-100 mb-5">
                    <img src="{{ asset('Storage/image/'.$b->image) }}" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">{{$b->title}}</h5>
                        <p class="card-text">by</p>
                        <h6 class="card-title">{{$b->author}}</h6>
                        <br>
                        <a href="{{url('details', ['id'=>$b->id])}}" class="btn btn-primary">Details</a>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
@endsection
