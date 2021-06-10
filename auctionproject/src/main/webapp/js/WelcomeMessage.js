/**
 * 
 */
  

function welcomeMsg()
{
     var val=document.getElementById("id1").value;
     if(window.confirm("Signup Successfully"+val+"! Do you want to login Click 'ok'"))
    	 {
    	    window.location.href="index.jsp";
    	 }
}