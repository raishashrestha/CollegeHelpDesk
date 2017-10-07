<%-- 
    Document   : response
    Created on : Aug 1, 2016, 9:29:06 PM
    Author     : Lenovo G40
--%>

<%@page import="com.info.model.User"%>
<%@page import="com.info.model.Responsee"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.info.utils.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.info.model.Problem"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="css/header.css">
<link rel="stylesheet" type="text/css" href="css/mystyle.css">
<link rel="stylesheet" type="text/css" href="css/para.css">
<link rel="stylesheet" type="text/css" href="css/navigation.css">
<link rel="stylesheet" type="text/css" href="css/body.css">
<link rel="stylesheet" type="text/css" href="css/popdownbutton.css">
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Response</title>
    </head>
    <body>
           <div id="head" style="overflow: visible;">
                 <ul class="head" >
                        <li class="head" >College Online Help Desk</li>
                       <li class="head" style="padding-left:725px; padding-right:10px;">
                            <a href="noticelist">
                                <span>
                                    Notice
                                </span>
                            </a>
                        </li>
                        <li class="head" style="padding-left:10px; padding-right:10px;">
                            <a href="student.jsp">
                                <span>
                                    Request
                                </span>
                            </a> 
                        </li>
                        <li class="head" style="padding-left:150px; padding-right:10px;">
                            <a href="logout.jsp">
                                <span>Logout</span>
                            </a>
                        </li>
                        
                 </ul>
          </div>
        
        
        <div id="nav">
        <!--<div class="lower-layer">-->
            <%
                User verifiedUser=(User)session.getAttribute("verifiedUser");
                
                if(verifiedUser!=null){
                    out.println("Welcome"+verifiedUser.getUserName());
            %>
        <form>
            
            <a href="postrequest.jsp"> Post Request</a>
            <br><br>
            <a href="ProblemList"> View Request List</a>
            <br><br>
             <a href="responseservlet"> View Response</a>
             <br><br>
                        
            
            
        </form>
         <%
            } else{
                response.sendRedirect("login.jsp");
                }


        %>
        </div>
        <div id="content" style="z-index: -1;">
             <div class="w3-card-8 w3-dark-grey" style=" box-sizing: content-box; border-radius: 8px; ">

                
                    <div id="bodyy" style="width:120%">
                        <span style="font-size: 32px;">
                           Response to Requests 
                        </span> 
            
                         <form>
            <%
            List<Responsee> ResponseList=(ArrayList)request.getAttribute("ResponseList");
        %>
        <table style="table-layout: none; ">
            <tr>
                <th> 
                    <span style="padding-left: 25px;padding-right: 15px; padding-top: 15px;">  ID</span>
                </th>
                <th> 
                    <span style="padding-left: 15px; padding-right: 65px; padding-top: 15px;">
                        Problem
                    </span>
                </th>
                <th>
                    <span style="padding-left: 25px;padding-right: 0px; padding-top: 15px;">
                        Response
                    </span>
                </th>
            </tr>
             <% for(Responsee responsee:ResponseList){%>
            <tr>
               <td>
                   <span style="padding-left: 25px">
                       <%= responsee.getRid() %>
                   </span></td>
                <td>
                    <span style="padding-left: 50px">
                        <%= responsee.getPrequest() %>
                    </span>
                </td>
                <td>
                    <span style="padding-left: 30px">
                        <%= responsee.getPresponse() %>
                    </span>
                </td>
                                    
                                                                           <%}%> 
                
            </tr>
            

                                                     
                                         
                                                   
                </table>

                         </form>
            </div>
             </div>
        </div>
<!-- <div class="lower-layer" style="opacity: 0; padding-top: 1450px;padding-bottom: 0px; margin: 0px;">
        </div>
        <div id="footer" class="aboutus">
                   
             <a href="About.jsp"> <span>About Us</span></a>
             <button>Contact Us</button>
             <p style="padding-bottom: 0px;">
                 9841775543
             </p>
             <button>Contact Us</button>
                
            
                 
           
            </div>-->
             
        
        
    </body>
</html>
   