function required()  
{  
var empt = document.forms["sign-in"]["microsoft-id"].value; 
var empt2 = document.forms["sign-in"]["case-id"].value;
if (empt == "" && empt2 == "") {  
	alert("Please input a Value");  
	window.location.href="index.html";
	return false;  
}  
else if(empt =="Microsoft ID" && empt2 == "Case ID"){
	alert("Please input a value");
	window.location.href="index.html";
	return false;
}
else   
{    
	return true;   
}  
}  