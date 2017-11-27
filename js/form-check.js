function required() {
    var empt = document.forms["sign-in"]["microsoft-id"].value;
    var empt2 = document.forms["sign-in"]["case-id"].value;
    if (empt == "" && empt2 == "") {
        alert("Please input a Value");
        window.location.href = "signin.aspx";
        return false;
    }
    else {
        alert("No such matchin is found in our DB!");
        window.location.href = "signin.aspx";
        return false;
    }
    
}  