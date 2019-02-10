function validar(){
	
	var nom=document.getElementById('nom').value;
	var ape=document.getElementById('ape').value;
	var tipo=document.getElementById('tipo').value;
	var num=document.getElementById('num').value;
	var us=document.getElementById('us').value;
	var email=document.getElementById('email').value;
	var pas=document.getElementById('pas').value;
	var re_pas=document.getElementById('re_pas').value;
	var errors=0;
	
	var html="";

	 if(nom == "") {
	 	return false
	    //Comprobamos que está vacío
		html = "Debe introducir el nombre";
		document.getElementById("msg").innerHTML = html;
		errors++;
	}

	

}