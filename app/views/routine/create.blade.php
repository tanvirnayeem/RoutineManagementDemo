@extends('layouts.default')
@section('content')
    <div class="row">
        <div class="col-md-12">
            @include('includes.alert')
            <section class="panel">
                <header class="panel-heading">
         
                    {{ $title }}

                    <span class="pull-right">

                            <a class="btn btn-success btn-sm" href="{{ URL::route('routinedemo.index') }}">Course List</a>

					</span>
                </header>
                
                <div class="panel-body">
                    {{ Form::open(array('route' => 'routinedemo.store', 'class' => 'form-horizontal')) }}

         <!-- input for semester -->

                    <div class="form-group">
                        {{ Form::label('semester', 'Semester Name*', array('class' => 'col-md-2 control-label')) }}
                        <div class="col-md-4">
                            {{ Form::select('semester', $semester, null, array('class' => 'form-control', 'required')) }}
                        </div>
                    </div>


        <!-- input for courses -->

                    <div class="form-group">
                        {{ Form::label('course', 'Assigned Course*', array('class' => 'col-md-2 control-label')) }}
                        <div class="col-md-4">
                            {{ Form::select('course', $courses, null, array('class' => 'form-control', 'required')) }}
                        </div>
                    </div>

        <!-- input for time -->

                    <div class="form-group">
                        {{ Form::label('timestart', 'Duration Time*', array('class' => 'col-md-2 control-label')) }}
                        <div class="col-md-4">
                            {{ Form::select('timestart', $times, null, array('class' => 'form-control','required')) }}
                        </div>
                    </div>

        <!-- input for day -->

                    <div class="form-group">
                        {{ Form::label('day', 'Day*', array('class' => 'col-md-2 control-label')) }}
                        <div class="col-md-4">
                            {{ Form::select('day', $days, null, array('class' => 'form-control', 'required')) }}
                        </div>
                    </div>

                    <div class="form-group">
                        {{ Form::label('room', 'Room No.*', array('class' => 'col-md-2 control-label')) }}
                        <div class="col-md-4">
                            {{ Form::select('room', $rooms, null, array('class' => 'form-control', 'required')) }}
                        </div>
                    </div>
       <!-- input for teacher -->

                    <div class="form-group">
                        {{ Form::label('teacher', 'Teacher*', array('class' => 'col-md-2 control-label')) }}
                        <div class="col-md-4">
                            {{ Form::select('teacher', $teachers, null, array('class' => 'form-control', 'required')) }}
                        </div>
                    </div>



    


                      
        <!-- submit button  -->       

                    <div class="form-group">
                        <div class="col-lg-offset-2 col-lg-10">
                            {{ Form::submit('Add To Routine Cart', array('class' => 'btn btn-primary')) }}
                        </div>
                    </div>
                    {{ Form::close() }}
                </div>
          
            </section>
        </div>
    </div>
@stop

