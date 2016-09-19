$(document).ready(function(){

	var id;
	var noteContent;

	function postRequest(noteContent) {
		id = document.activeElement.id
  	$.ajax({
	    type: "POST",
	    url: "/notes/"+id,
	    dataType: "text",
	    data: { _method:"put", note: noteContent }
	  })
	}

	function sendNote(callback) {
		id = "#" + document.activeElement.id
		noteContent = $(id).text();
		callback(noteContent)
	}

  $(".notes").keyup(function(){
		sendNote(postRequest);
  });
});