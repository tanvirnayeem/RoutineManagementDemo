<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableClassAssigned extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('class_assigned', function(Blueprint $table)
		{
			$table->increments('id');

			$table->integer('day_id')->unsigned()->index();
			$table->foreign('day_id')
					->references('id')->on('day')
					->onDelete('cascade')->onUpdate('cascade');

			$table->integer('course_taken_id')->unsigned()->index();
			$table->foreign('course_taken_id')
					->references('id')->on('course_taken')
					->onDelete('cascade')->onUpdate('cascade');

			$table->integer('room_id')->unsigned()->index();
			$table->foreign('room_id')
					->references('id')->on('class_room')
					->onDelete('cascade')->onUpdate('cascade');

			$table->integer('start_time_id')->unsigned()->index();
			$table->foreign('start_time_id')
					->references('id')->on('time')
					->onDelete('cascade')->onUpdate('cascade');

			$table->integer('end_time_id')->unsigned()->index();
			$table->foreign('end_time_id')
					->references('id')->on('time')
					->onDelete('cascade')->onUpdate('cascade');
					
			$table->timestamps();
		});
	}

	/**
	 * Reverse the migrations.
	 *
	 * @return void
	 */
	public function down()
	{
		Schema::drop('class_assigned');
	}

}
