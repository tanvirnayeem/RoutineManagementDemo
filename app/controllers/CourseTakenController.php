<?php

class CourseTakenController extends \BaseController {

	/**
	 * Display a listing of the resource.
	 * GET /coursetaken
	 *
	 * @return Response
	 */
	public function index()
	{
		$course = Course::all();
		return View::make('routine.index')->with('courses',$course)
								->with('title', 'CSE');

	}

	/**
	 * Show the form for creating a new resource.
	 * GET /coursetaken/create
	 *
	 * @return Response
	 */
	public function create()
	{
		$semester = [
			6 => '3/2',
			4 => '2/2'

		];
		$course = Course::lists('course_code', 'id');
		$teacher = Instructor::lists('instructor_code', 'id');
		$room = ClassRoom::lists('room_no', 'id');
		$day = Day::lists('day_name', 'id');
		$timestart = Time::lists('time_name', 'id');
		return View::make('routine.create')
						->with('courses', $course)
						->with('title','RoutineTable')
						->with('times', $timestart)
						->with('teachers', $teacher)
						->with('days', $day)
						->with('semester',$semester)
						->with('rooms', $room);
	}

	/**
	 * Store a newly created resource in storage.
	 * POST /coursetaken
	 *
	 * @return Response
	 */
	public function store()
	{
		$flag = null;
		$record = null;
		$data = Input::all();
		$course_name = Course::where('id',$data['course'])->first()->course_code;
		$teacher_name = Instructor::where('id',$data['teacher'])->first()->instructor_code;
		$day_name = Day::where('id',$data['day'])->first()->day_name;
		$roomName = ClassRoom::where('id',$data['room'])->first()->room_no;
		$check = Routine::where('day',$day_name)->get();
		foreach ($check as $checks) {
			if($checks->Semester == $data['semester']){
				$flag = 1;
				$record = $checks->id;
			}
			else{
				 
			}
		}
		$routine = null;
		if($check && $flag){
			$routine = Routine::findOrFail($record);
		}
		else{
			$routine = new Routine;
			$routine->semester = $data['semester'];
			$routine->day = $day_name;
		}
		switch ($data['timestart']) {
				case 1:
					$routine->am8 = $course_name.' '.$teacher_name;
					$routine->room_id8 = $roomName;
					if(Routine::where('day',$day_name)->where('room_id8',$roomName)->exists()){
						return Redirect::back()->withInput()->with('error','Room Already taken for this day and time');
					}

					break;
				case 2:
					$routine->am9 = $course_name.' '.$teacher_name;
					$routine->room_id9 = $roomName;
					if(Routine::where('day',$day_name)->where('room_id9',$roomName)->exists()){
						return Redirect::back()->withInput()->with('error','Room Already taken for this day and time');
					}
					break;
				case 3:
					$routine->am10 = $course_name.' '.$teacher_name;
					$routine->room_id10 = $roomName;
					if(Routine::where('day',$day_name)->where('room_id10 ',$roomName)->exists()){
						return Redirect::back()->withInput()->with('error','Room Already taken for this day and time');
					}
					break;
				case 4:
					$routine->am11 = $course_name.' '.$teacher_name;
					$routine->room_id11 = $roomName;
					if(Routine::where('day',$day_name)->where('room_id11',$roomName)->exists()){
						return Redirect::back()->withInput()->with('error','Room Already taken for this day and time');
					}
					break;
				case 5:
					$routine->pm12 = $course_name.' '.$teacher_name;
					$routine->room_id12 = $roomName;
					if(Routine::where('day',$day_name)->where('room_id12',$roomName)->exists()){
						return Redirect::back()->withInput()->with('error','Room Already taken for this day and time');
					}
					break;
				case 6:
					$routine->pm1 = $course_name.' '.$teacher_name;
					$routine->room_id1 = $roomName;
					if(Routine::where('day',$day_name)->where('room_id1',$roomName)->exists()){
						return Redirect::back()->withInput()->with('error','Room Already taken for this day and time');
					}
					break;
				case 7:
					$routine->pm2 = $course_name.' '.$teacher_name;
					$routine->room_id2 = $roomName;
					if(Routine::where('day',$day_name)->where('room_id2',$roomName)->exists()){
						return Redirect::back()->withInput()->with('error','Room Already taken for this day and time');
					}
					break;
				case 8:
					$routine->pm3 = $course_name.' '.$teacher_name;
					$routine->room_id3 = $roomName;
					if(Routine::where('day',$day_name)->where('room_id3',$roomName)->exists()){
						return Redirect::back()->withInput()->with('error','Room Already taken for this day and time');
					}
					break;
				case 9:
					$routine->pm4 = $course_name.' '.$teacher_name;
					$routine->room_id4 = $roomName;
					if(Routine::where('day',$day_name)->where('room_id4',$roomName)->exists()){
						return Redirect::back()->withInput()->with('error','Room Already taken for this day and time');
					}
					break;
				
				default:
					# code...
					break;
			}
		if($routine->save()){
			return Redirect::route('routinedemo.create')->with('success', "Upgrade Successful");
		}else{
			return Redirect::back()->withInput()->with('error', "Something went wrong.Try again");
		}
	}

	/**
	 * Display the specified resource.
	 * GET /coursetaken/{id}
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function show($id)
	{

		$routine = Routine::where('semester',$id)->get();
		return View::make('routine.routine')
				->with('routines',$routine)
				->with('title','CSE Routine');
	}

	/**
	 * Show the form for editing the specified resource.
	 * GET /coursetaken/{id}/edit
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function edit($id)
	{
		//
	}

	/**
	 * Update the specified resource in storage.
	 * PUT /coursetaken/{id}
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function update($id)
	{
		//
	}

	/**
	 * Remove the specified resource from storage.
	 * DELETE /coursetaken/{id}
	 *
	 * @param  int  $id
	 * @return Response
	 */
	public function destroy($id)
	{
		//
	}

	public function checkConfliction()
	{
		$days = Day::all();
		foreach ($days as $day) {
			return $routines = Routine::where('day',$day->day_name)->get();
			foreach ($routines as $routine) {
				# code...
			}
		}
	}

}