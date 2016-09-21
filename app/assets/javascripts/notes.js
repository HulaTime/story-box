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

	$('div[contenteditable]').keydown(function(e) {
    // trap the return key being pressed
    if (e.keyCode === 13) {
      // insert 2 br tags (if only one br tag is inserted the cursor won't go to the next line)
      document.execCommand('insertHTML', false, '<br><br>');
      // prevent the default behaviour of return key pressed
      return false;
    }
  });

});