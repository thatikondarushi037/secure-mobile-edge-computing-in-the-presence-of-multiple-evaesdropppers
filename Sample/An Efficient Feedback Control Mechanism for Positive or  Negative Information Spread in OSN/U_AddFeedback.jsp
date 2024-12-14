<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Comment Posting Status..</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-times.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style6 {font-size: 35px}
.style31 {font-size: 30px}
.style33 {color: #1e5381; font-size: 30px; }
.style34 {color: #0000FF}
.style35 {font-size: 24px}
.style17 {font-size: 16px; color: #00CC00; font-weight: bold; }
.style36 {color: #FF0000}
.style37 {
	color: #FF00FF;
	font-weight: bold;
}
.style38 {
	color: #009900;
	font-weight: bold;
}
.style44 {font-weight: bold}
.style46 {color: #FF0000; font-weight: bold; }
.style47 {color: #FF00FF}
.style49 {
	color: #009900;
	font-size: 14px;
}
.style50 {
	color: #000000;
	font-size: 12px;
	font-weight: bold;
}
.style51 {color: #006600}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1 class="style6"><a href="#">An Efficient Feedback Control Mechanism for Positive/Negative Information Spread in  Online Social Networks</a></h1>
      </div>
      <div class="menu_nav">
        <ul>
		  <li><a href="#"></a></li>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li class="active"><a href="UserLogin.jsp"><span>User </span></a></li>
          <li><a href="ServerLogin.jsp"><span>Admin</span></a></li>
		   <li><a href="#"></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /></a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2 class="style34"><span class="style35">Comment Posting Status.</span>.</h2>
          
<%@ include file="connect.jsp" %>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*" %>
<%@ page import="java.util.Date" %>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import ="java.text.SimpleDateFormat" %>
          <span class="style46">
          <%
String p_Name =  request.getParameter("p_Name");
String username =  request.getParameter("username");
String tolower=request.getParameter("comment");
String comment = tolower.toLowerCase();
  try{      
  String s1="",s2="";
  String f="false";
  int g=0,v=0,c=0,t=0,s=0,k=0;
         					
					
								
									   				   SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
													   SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
								
													   Date now = new Date();
								
													   String strDate = sdfDate.format(now);
													   String strTime = sdfTime.format(now);
													   String date = strDate + "   " + strTime;
													   
													   
													Statement st3 = connection.createStatement();
													String query3 ="insert into postcomments (user,title,comment,date) values ('"+username+"','"+p_Name+"','"+comment+"','"+date+"')";
													
													int a=st3.executeUpdate (query3);
													if(a>0)
													{
													
											
																%>
																<br/>
																  </p>
																  <p class="style16 style38 style51">Feedback Added Successfully..</p>
																  <p class="style17">&nbsp;</p>
																  <p><a href="U_ViewFriendsPosts.jsp" class="style44 style37">Back</a></p>
													 			<%
													}				
			 
  }
  catch (Exception e){
    e.printStackTrace();
  }
%>
<div></div>
       
          <div class="clr"></div>
        </div>
        <div class="article">
          <h2 class="style31">&nbsp;</h2>
        </div>
      </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
            </span>
            <input name="button_search" src="images/search.gif" class="button_search" type="image" />
          </form>
        </div>
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="#">Home</a></li>
			<li><a href="index.html">Log Out </a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
