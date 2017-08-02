@extends('layouts.default')
@section('content')
    <div class="row">
        <div class="col-lg-12">
            @include('includes.alert')
            <section class="panel">
                <header class="panel-heading clearfix">
                    {{ $title }}
                    <span class="pull-right">

                            <a class="btn btn-success btn-sm btn-new-user" href="{{ URL::route('routinedemo.check') }}">Check Confliction</a>

                    </span>
                </header>
                <div class="panel-body">
                    @if(count($routines))
                        <table class="display table table-bordered table-striped" id="example">
                            <thead>
                            <tr>
                                <th>Day/Time</th>
                                <th>8 AM</th>
                                <th>9 AM</th>
                                <th>10 AM</th>
                                <th>11 AM</th>
                                <th>12 PM</th>
                                <th>1 PM</th>
                                <th>2 PM</th>
                                <th>3 PM</th>
                                <th>4 PM</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($routines as $routine)
                                <tr>
                                    <td>{{ $routine->day}}</td>
                                    <td>{{ $routine->am8}}<br>{{$routine->room_id8}}</td>
                                    <td>{{ $routine->am9}}<br>{{$routine->room_id9}}</td>
                                    <td>{{ $routine->am10}}<br>{{$routine->room_id10}}</td>
                                    <td>{{ $routine->am11}}<br>{{$routine->room_id11}}</td>
                                    <td>{{ $routine->pm12}}<br>{{$routine->room_id12}}</td>
                                    <td>{{ $routine->pm1}}<br>{{$routine->room_id1}}</td>
                                    <td>{{ $routine->pm2}}<br>{{$routine->room_id2}}</td>
                                    <td>{{ $routine->pm3}}<br>{{$routine->room_id3}}</td>
                                    <td>{{ $routine->pm4}}<br>{{$routine->room_id4}}</td>
                                    
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    @else
                        No Data Found
                    @endif
                </div>
            </section>
        </div>
    </div>




@stop


@section('style')
    {{ HTML::style('assets/data-tables/DT_bootstrap.css') }}

@stop
