function validation(){
    var fname= document.myform.fullname
    var email= document.myform.email 
    var mailformat = /^\w+([\.-]?\w+)@\w+([\.-]?\w+)(\.\w{2,3})+$/;
    var password=document.myform.password
    var letter = /[a-z]/;
    var upper = /[A-Z]/;
    var number = /[0-9]/;
    
    if (fullname.value=='' || fullname.value.length <6){
        alert(" firstname should be more than 6 alphabets")
        fname.focus();
        return false;
    }
    
    if(contact.value==''){
        alert('Please enter mobile number');
        contact.focus();
        return false;
    }
    if (!(contact.value.length > 6 && contact.value.length < 11)) {
      alert("Please Enter Correct Contact Number");
      contact.focus();
      return false;
  }
    
    
    if(!email.value.match(mailformat)){
        alert("invalid email")
        email.focus();
        return false;
    }
    
    if (!letter.test(password.value)) {
           alert("Please make sure password includes a lowercase letter.")
           return false;
        }
        if (!number.test(password.value)) {
           alert("Please make sure Password Includes a Digit")
           return false;
        }
        if (!upper.test(password.value)) {
           alert("Please make sure password includes an uppercase letter.");
           return false;
        }
    return true;
    }