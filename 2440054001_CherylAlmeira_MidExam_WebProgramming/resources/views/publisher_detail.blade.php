@extends('main')

@section('title', 'Giant Book Supplier - Publisher')

@section('content')
    <div class=”title-publisher”>
        <div class="row publisher-container">
            <div class="col-3 d-flex">
                 <img src="{{ asset('Storage/logo/'.$publishers->image) }}" class = "publisher-logo" alt="..." height="200px" width="200px"> 
            </div>
            <div class="col-9">
                <div class="publisher-content">
                    <h3> {{$publishers->name}} </h3>
                </div>
                <div class="publisher-content">
                    <h4> Address - {{$publishers->address}}</h4>
                </div>
                <div class="publisher-content">
                    <h4> Phone - {{$publishers->phone}}</h4>
                </div>
                <div class="publisher-content">
                    <h4> Email - {{$publishers->email}}</h4>
                </div>
            </div>
        </div>
    </div>

    <div class="row row-cols-1 row-cols-md-3 g-4 mb-5">
        @foreach($publishers->books as $book)
            <div class="col mb-5">
                <div class="card h-100 mb-5">
                    <img src="{{ asset('Storage/image/'.$book->image) }}" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">{{$book->title}}</h5>
                        <p class="card-text">by</p>
                        <h6 class="card-title">{{$book->author}}</h6>
                        <br>
                        <a href="{{url('details', ['id'=>$book->id])}}" class="btn btn-primary">Detail</a>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
@endsection
