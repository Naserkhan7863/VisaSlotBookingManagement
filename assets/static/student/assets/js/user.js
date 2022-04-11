function validation(){
    let NameEl = document.myform.fullname
    let fullname = document.getElementById("fullname");
    let NameE2 = document.myform.title

    var email= document.myform.email 
    var mailformat = /^\w+([\.-]?\w+)@\w+([\.-]?\w+)(\.\w{2,3})+$/;
    var password=document.myform.password
    var letter = /[a-z]/;
    var upper = /[A-Z]/;
    var number = /[0-9]/;
    let contact=document.myform.contact
    if (NameEl.value.length <= 0){
        alert("Enter your full name")
        NameEl.focus();
        return false
 
    }
    if(fullname.value.length > 12){
        alert("cmkdcmkdc")
        fullname.focus();
        return false
    }


    if (NameE2.value.length <= 0){
        alert("Enter Slot Title")
        NameE2.focus();
        return false
 
    }

    if (email.value.length <= 0){
        alert("Enter your Email")
        email.focus();
        return false
 
    }
   
 
    if (contact.value.length != 10) {
      alert("Please Enter Correct Contact Number");
      contact.focus();
      return false;
  }
    
  if (password.value.length < 6) {
    alert("password must be atleast 6 characters");
    password.focus();
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
    
    }


function validate()
{

    let fullname = document.getElementById("fullname");



    if(fullname.value.length > 12){
        alert("cmkdcmkdc")
        fullname.focus();
        return false
    }

}