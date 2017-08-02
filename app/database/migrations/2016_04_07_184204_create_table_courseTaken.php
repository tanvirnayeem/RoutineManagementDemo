<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTableCourseTaken extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('course_taken', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('course_id')->unsigned()->index();
			$table->foreign('course_id')
					->references('id')->on('course')
					->onDelete('cascade')->onUpdate('cascade');

			$table->integer('instructor_id')->unsigned()->index();
			$table->foreign('instructor_id')
					->references('id')->on('instructor')
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
		Schema::drop('course_taken');
	}

}
