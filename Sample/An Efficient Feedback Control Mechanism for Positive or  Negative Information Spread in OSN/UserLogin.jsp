<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Login Page</title>
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
.style1 {
	font-size: 35px;
	font-weight: bold;
}
.style6 {font-size: 35px}
.style12 {
	color: #00CC00;
	font-size: 30px;
}
.style10 {color: #FF00FF;
	font-weight: bold;
}
.style16 {color: #FF0000}
.style30 {color: #FF00FF}
.style9 {color: #FF0000; font-weight: bold; }
.style31 {font-size: 30px}
.style33 {color: #1e5381; font-size: 30px; }
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1 class="style6"><a href="#">An Efficient Feedback Control Mechanism for Positive/Negative Information Spread in Online Social Networks</a></h1>
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
          <h2 class="style1"><span class="style12">Welcome to User Login </span></h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
       
          <div>
              <form id="form1" name="form1" method="post" action="UserAuthentication.jsp">
                <table width="464" border="0" cellspacing="2" cellpadding="2">
                  <tr>
                    <td width="197" height="46" align="center"><span class="style9">
                      <label for="name">Name (required)</label>
                    </span> </td>
                    <td width="253"><input id="name" name="userid" class="text" /></td>
                  </tr>
                  <tr>
                    <td height="40" align="center"><span class="style9">Password (required)</span></td>
                    <td><input type="password" id="pass" name="pass" class="text" /></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td><span class="style16">
                      <input name="imageField" type="submit"  class="LOGIN" id="imageField" value="Login" />
                      <strong> New User?</strong></span><a href="UserRegister.jsp" class="style30"> Register </a></td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                  </tr>
                </table>
                <p align="right"><a href="index.html" class="style10">Back</a></p>
            </form>
          </div>
       
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
            <li>
              <p><a href="UserLogin.jsp">Home</a></p>
              <p><a href="index.html">Index Page</a></p>
            </li>
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
