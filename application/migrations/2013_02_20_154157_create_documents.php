<?php

class Create_Documents {

    public function up()
    {
        Schema::create('documents', function($table) {
            $table->increments('id');
            $table->integer('doctor_id');
            $table->string('documentURL', 255);
            $table->string('imageURL', 255);
            $table->string('container', 255);
            $table->string('filename', 255);
            $table->string('token', 255);
            $table->date('expiration_date');
            $table->timestamps();
        });



    }

    /**
     * Revert the changes to the database.
     * In this case we just drop the table
     * @return void
     */
    public function down()
    {
            Schema::drop('documents');
    }



}
