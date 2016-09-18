# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

`$(document).ready(function(){

	function postRequest(noteContent) {
  	$.ajax({
	    type: "POST",
	    url: "/notes",
	    dataType: "json",
	    data: { note: "noteContent" }
	  })
	}

	function sendNote(callback) {
		var noteContent = $("#note-0").html();
		callback(noteContent);
	}
	
	// var noteContent = $("#note-0").html();

  $("#note-0").keyup(function(){
  	sendNote(postRequest);
  });
}); `