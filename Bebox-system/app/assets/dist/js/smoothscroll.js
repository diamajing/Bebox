$(function() {
	  $('a[href*=#]:not([href=#])').click(function() {
	    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
	      var target = $(this.hash);
	      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
	      if (target.length) {
	        $('html,body').animate({
	          scrollTop: target.offset().top + 0
	        }, 1000);
	        return false;
	      }
	    }
	  });
	});

$(document).ready(function(){
    
    
    $("form").submit(function(event){
        // cancels the form submission
        console.log("khalido ist schwul");
        event.preventDefault();
        submitForm();
    });


    function submitForm(){
        // Initiate Variables With Form Content
        var name = $("#name").val();
        var email = $("#email").val();
        var message = $("#message").val();
        var prenom = $("#prenom").val();
        var tel = $("#tel").val();
        var firma = $("#firma").val();

        $.ajax({
            type: "POST",
            url: "process.php",
            data: "name=" + name + "&email=" + email + "&message=" + message +"&prenom=" + prenom + "&firma=" + firma + "&tel=" + tel ,
            success : function(text){
                if (text == "success"){
                    formSuccess();
                } else if (text == "invalid"){
                    console.log("fehler!");
                }
            }
        });
    }
    function formSuccess(){
        $( "#msgSubmit" ).removeClass( "hidden" );
    }


});