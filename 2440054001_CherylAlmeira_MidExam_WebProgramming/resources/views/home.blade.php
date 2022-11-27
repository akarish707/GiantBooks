@extends('main')

@section('title', 'Giant Book Supplier - Home')

@section('content')
    {{-- <div class=”title class="container-fluid fixed-bottom text-light align-middle" style="background-color: #727484"”> Book List </div> --}}
    <div class="card-header py-3">
        <h3 class="m-0 font-weight-bold text-black" style="background-color: #6069a8">Book List</h3>
    </div>

    <div class="row row-cols-1 row-cols-md-3 g-4 mb-10">
        @foreach($books as $book)
            <div class="col mb-5 mt-5">
                <div class="card h-100 mb-5">
                    <img src="{{ asset('Storage/image/'.$book->image) }}" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">{{$book->title}}</h5>
                        <p class="card-text">by</p>
                        <h6 class="card-title">{{$book->author}}</h6>
                        <br>
                        <a href="{{url('details', ['id'=>$book->id])}}" class="btn btn-primary mb-5">Details</a>
                    </div>
                </div>
            </div>
        @endforeach
    </div>
@endsection
