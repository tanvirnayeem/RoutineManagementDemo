<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRoutineTable extends Migration {

	/**
	 * Run the migrations.
	 *
	 * @return void
	 */
	public function up()
	{
		Schema::create('routine', function(Blueprint $table)
		{
			$table->increments('id');
			$table->integer('Semester');
			$table->string('day');
			$table->string('am8');
			$table->string('room_id8');
			$table->string('am9');
			$table->string('room_id9');
			$table->string('am10');
			$table->string('room_id10');
			$table->string('am11');
			$table->string('room_id11');
			$table->string('pm12');
			$table->string('room_id12');
			$table->string('pm1');
			$table->string('room_id1');
			$table->string('pm2');
			$table->string('room_id2');
			$table->string('pm3');
			$table->string('room_id3');
			$table->string('pm4');
			$table->string('room_id4');
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
		Schema::drop('routine');
	}

}
