function validate() {
	var eid = document.getElementById("eid");
	var name = document.getElementById("name");
	var pass = document.getElementById("pass");
	var error = document.getElementById("addError");
	var servletMessage = document.getElementById("servletMessage");
	servletMessage.style.display = "none";
	if(eid.value == ""){
		$("#addError").html("id is required");
		eid.focus();
		$("#addError").fadeIn();
		setTimeout(function() {
			$("#addError").fadeOut();
			}, 1000);
		return false;
	}
	else if(name.value == "") {
		$("#addError").html("name is required");
		name.focus();
		$("#addError").fadeIn();
		setTimeout(function() {
			$("#addError").fadeOut();
			}, 1000);
		return false;
	}
	else if(pass.value == "") {
		$("#addError").html("password is required");
		pass.focus();
		$("#addError").fadeIn();
		setTimeout(function() {
			$("#addError").fadeOut();
			}, 1000);
		return false;
	}
	else {
		error.innerHTML = "";
	}
}
function checkId()
{
    var key=event.keyCode;
    if (!(key > 31 && (key < 48 || key > 57))) {
        return true;
    }
    return false;
}
function refresh() {
	if(servletMessage.innerHTML == ""){
		servletMessage.style.display = "none";
	}
	if(servletMessage.innerHTML != "") {
		$("#servletMessage").fadeIn();
	}
}