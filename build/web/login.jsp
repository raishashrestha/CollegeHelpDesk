<%-- 
    Document   : login
    Created on : Jul 31, 2016, 9:41:46 PM
    Author     : Lenovo G40
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,javax.servlet.http.HttpServletResponse" %>
<link rel="stylesheet" type="text/css" href="css/header.css">
<link rel="stylesheet" type="text/css" href="css/mystyle.css">
<link rel="stylesheet" type="text/css" href="css/para.css">
<link rel="stylesheet" type="text/css" href="css/navigation.css">
<link rel="stylesheet" type="text/css" href="css/body.css">
<link rel="stylesheet" type="text/css" href="css/popdownbutton.css">
<link rel="stylesheet" type="text/css" href="css/footer.css">
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <%
          String msg="";  
//            String msg=response.getAttribute("msg");
         %>
       
        
        
                <div id="head" style="overflow: visible;">
                 <ul class="head" >
                        <li class="head" style="left"><a href="homepage.jsp" style="padding-right: 30px;">College Online Help Desk</a></li>
                          <li class="head" style="padding-left:483px; padding-right:10px;">
                             Login as 
                          </li>
                        <li class="head">
                <div class="dropdown">
                    <button  class="dropbtn" style="margin-top:-20px;">Student</button>
        <div id="myDropdown" class="dropdown-content" style="border-radius:5px; padding-top: 0px; padding-right: 20px;padding-left:25px; ">
            <a style="color: black; font-family: Verdana,sans-serif; font-size: 14px;">          
                <form action="UserServlet" method="post">
                    <p style="float: left;">User Name:
                        </p> <input type="text" name="username">
                        <p style="float: left; ">
                                            Password:
                        </p>
                        
                        <input type="password" name="password">
                        <p style="float:right">
                                            <input type="submit" value="Login" name="Login"> 
                         </p>                         
                                        </form>
                                        </a> 
         </div>
        </div>
        
                </li>   
             <li class="head">   
                <div class="dropdown">
                    <button  class="dropbtn" style="margin-top:-20px;">Admin</button>
        <div id="myDropdown" class="dropdown-content" style="border-radius:5px; padding-top: 0px; padding-right: 20px;padding-left:25px; ">
           <a style="color: black; font-family: Verdana,sans-serif; font-size: 14px;">  
        <form action="adminservlet" method="post">
            
            <p style="float: left;">
                Username:
            </p>
                <input type="text" name="username">
            <p style="float: left;">
                    Password:
            </p>
            
                <input type="password" name="password">
              
            <p style="float:right"> 
                <input type="submit" value="Login" name="Login"> 
            </p>
        </form>
                </a>
        </div>
         </div>
          </li>       
       <li class="head">   
                <div class="dropdown">
                    <button  class="dropbtn" style="margin-top:-20px;">College Management</button>
        <div id="myDropdown" class="dropdown-content" style="border-radius:5px; padding-top: 0px; padding-right: 20px;padding-left:25px; ">
           <a style="color: black; font-family: Verdana,sans-serif; font-size: 14px;">  
       
            <form action="depheadservlet" method="post">
           <p style="float: left;">
                Username:
            </p>
                <input type="text" name="username">
            <p style="float: left;">
                    Password:
            </p>
            
            <input type="password" name="password">
           
            <p style="float:right">
            <input type="submit" value="Login" name="Login">
            </p>
        </form>
            </a>
        </div>
            </div>
        </li>
        <li>
             
            
<!--            <div class="w3-hide-small" style="float:right;width:30%;overflow:hidden;height:44px;">
<a id="topnavbtn_tutorials" href="javascript:void(0);" onclick="w3_open_nav(&quot;tutorials&quot;)" title="Tutorials">
    TUTORIALS 
    <i style="display: inline;" class="fa fa-caret-down">saurav</i>
    <i class="fa fa-caret-up" style="display: none;"></i>
</a>
                <a id="topnavbtn_references" href="javascript:void(0);" onclick="w3_open_nav(&quot;references&quot;)" title="References">
                    REFERENCES 
                    <i style="display: inline;" class="fa fa-caret-down">
                        
                    </i>
                    <i class="fa fa-caret-up" style="display:none">
                        
                    </i>
                </a>
                <a id="topnavbtn_examples" href="javascript:void(0);" onclick="w3_open_nav(&quot;examples&quot;)" title="Examples">EXAMPLES 
                    <i style="display: inline;" class="fa fa-caret-down">
                        
                    </i>
                    <i class="fa fa-caret-up" style="display:none">
                        
                    </i>
                </a>
                <a href="/forum/default.asp">FORUM</a>
            </div>-->
            </ul>
                </div>
        <div class="lower-layer">
    
            <br><br>

            <h1>Register</h1>
            
            <%
                out.print(msg);
            %>
            <form action="registerservlet" method="post" >
                <span>UserName:</span><input type="text" name="username">
            <br><br>
                <span>Password:</span><input type="password" name="password">
            <br><br>
                <span>Roll:</span><input type="text" name="Roll">
            <br><br>
                <span>Year:</span><input type="text" name="Year">
            <br><br>
                <span>Batch:</span><input type="text" name="Batch">
                            <br><br>
                <input type="submit" value="Register" name="Register">
            </form>
        
        </div>
<!--           <footer style="background:black; margin:0px;">
<div class="footer" style="position:absolute; margin-top: 780px; background: black; margin-left: 0px;margin-right:0px;">
              <button style="border-bottom: 1px solid #EEE;margin-left:5px; text-align: left;">Contact Us</button>       
             <a href="About.jsp"> <span style="padding-left:20px;">About Us</span></a>
             <p style="margin:0px; color:white; margin-left: 5px;">
                 9841775543
                 <br>
                 9841233677
             </p>
                
            
</footer>-->
</body>
</html>
