function validate() {
	var eid = document.getElementById("eid");
	var name = document.getElementById("name");
	var pass = document.getElementById("pass");
	var error = document.getElementById("addError");
	if(eid.value == ""){
		error.style.display = "block";
		error.innerHTML = "id is required";
		eid.focus();
		return false;
	}
	else if(name.value == "") {
		error.innerHTML = "name is required";
		name.focus();
		return false;
	}
	else if(pass.value == "") {
		error.innerHTML ="password is required";
		pass.focus();
		return false;
	}
	else {
		error.innerHTML = "";
	}
}