// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require jquery-ui



//= require_tree .


	$(function (){
	 $('#project_start_date,#project_due_date,#task_start_date,#task_due_date').datepicker({ dateFormat: "yy-mm-dd"});
	 $('#proj_accord').accordion({ autoHeight: false });
	 $('#team_accord').accordion({ autoHeight: false, collapsible: true });

	 $('#tabs').tabs();
	 });




	
