<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Registration Page..</title>
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
.style10 {color: #FF00FF;
	font-weight: bold;
}
.style30 {color: #FF00FF}
.style9 {color: #FF0000; font-weight: bold; }
.style34 {	font-size: 28px;
	color: #0000FF;
}
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
          <h2 class="style1"><span class="style34">Welcome To User Registration </span></h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
       
          <div>
            <form action="UserRegisterAuthentication.jsp" method="post" id="" enctype="multipart/form-data">
              <label for="name"><span class="style9">User Name (required)</span></label>
              <p class="style9">
                <input id="name" name="userid" class="text" />
              </p>
              <span class="style9">
              <label for="password">Password (required)</label>
              </span>
              <p class="style9">
                <input type="password" id="password" name="pass" class="text" />
              </p>
              <span class="style9">
              <label for="email">Email Address (required)</label>
              </span>
              <p class="style9">
                <input id="email" name="email" class="text" />
              </p>
              <span class="style9">
              <label for="mobile">Mobile Number (required)</label>
              </span>
              <p class="style9">
                <input id="mobile" name="mobile" class="text" />
              </p>
              <span class="style9">
              <label for="address">Your Address</label>
              </span>
              <p class="style9">
                <textarea id="address" name="address" rows="3" cols="50"></textarea>
              </p>
              <span class="style9">
              <label for="dob">Date of Birth (required)<br />
              </label>
              </span>
              <p class="style9">
                <input id="dob" name="dob" class="text" />
              </p>
              <span class="style9">
              <label for="gender">Select Gender (required)</label>
              </span>
              <p class="style9">
                <select id="s1" name="gender" style="width:480px;" class="text">
                  <option>--Select--</option>
                  <option>MALE</option>
                  <option>FEMALE</option>
                </select>
              </p>
              <span class="style9">
              <label for="pincode"></label>
              </span>
              <p class="style9">&nbsp;</p>
              <span class="style9">
              <label for="location"></label>
              </span>
              <p class="style9">
                <label for="pic">Select Profile Picture (required)</label>
                <input type="file" id="pic" name="pic" class="text" />
              </p>
              <p><br />
                  <input name="submit" type="submit" value="REGISTER" />
              </p>
              <p align="right" class="style30"><a href="index.html" class="style10">Back</a></p>
            </form>
          </div>
       
          <div class="clr"></div>
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
            <li><a href="UserRegister.jsp">Home</a></li>
            <li><a href="UserLogin.jsp">User Login </a></li>
            <li><a href="index.html">Index Page </a></li>
            
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
