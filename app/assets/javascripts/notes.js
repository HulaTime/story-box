$(document).ready(function(){

	function postRequest(noteContent) {
  	$.ajax({
	    type: "POST",
	    url: "/notes/11",
	    dataType: "text",
	    data: { _method:"put", note: noteContent }
	  })
	}

	function sendNote(callback) {
		var noteContent = $("#11").text();
		callback(noteContent);
	}

  $("#11").keyup(function(){
  	sendNote(postRequest);
  });
});