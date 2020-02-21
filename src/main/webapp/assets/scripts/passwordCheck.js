$(document).ready(function () {
	   $("#registerSubmit").click(function (e) {
	        e.preventDefault();
        var matched,
            password = $("#signin-password").val(),
            confirm = $("#repeat-password").val();

        matched = (password == confirm) ? true : false;
        if(matched) {
            $("#registerForm").submit(); 
        }
        else { 
            $("#responseSpan").html("Passwords don't match."); 
            return false;
        }
	   });
});