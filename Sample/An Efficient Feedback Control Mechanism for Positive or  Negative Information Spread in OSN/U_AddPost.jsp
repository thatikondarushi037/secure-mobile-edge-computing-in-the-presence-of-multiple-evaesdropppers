<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Add Posts.. </title>
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
.style31 {font-size: 30px}
.style33 {color: #1e5381; font-size: 30px; }
.style34 {
	color: #FF6600;
	font-size: 30px;
}
.style39 {font-size: 13px; font-weight: bold; color: #6666FF; }
.style35 {color: #9900FF;
	font-weight: bold;
}
.style36 {color: #9900FF}
.style12 {color: #009900}
.style40 {color: #FF0000}
.style42 {color: #FF0000; font-size: 11px; }
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
          <h2 class="style1"><span class="style34"><span class="style12">Add Posts.. </span></span></h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
       
          <div class="img">
		 
            <form action="U_AddPost1.jsp" method="post" enctype="multipart/form-data">
              <table width="648" border="0" align="center">
                <tr>
                  <td width="186" bgcolor="#FFFF00"><span class="style39">Post Title <span class="style42">(Required)</span></span></td>
                  <td width="452"><label> <br />
                        <input name="title" type="text" size="40" />
                        <br />
                        <br />
                  </label></td>
                </tr>

                <tr>
                  <td bgcolor="#FFFF00"><span class="style39">Choose Image <span class="style42">(Required)</span></span></td>
                  <td><input type="file" id="file" name="file" /></td>
				  
                </tr>
                <tr>
                  <td bgcolor="#FFFF00"><span class="style39">Uses <span class="style42">(Required)</span></span></td>
                  <td><p>
                      <label>
                      <textarea name="textarea" cols="40" rows="3"></textarea>
                      </label>
                  </p></td>
                </tr>
                <tr>
                  <td bgcolor="#FFFF00"><span class="style39">Post Description <span class="style42">(Required)</span></span></td>
                  <td><p>
                      <label>
                      <textarea name="textarea2" cols="40" rows="3"></textarea>
                      </label>
                  </p></td>
                </tr>
                <tr>
                  <td height="77" bgcolor="#FFFF00"><span class="style39">Message <span class="style42">(Required)</span></span></td>
                  <td valign="top">
                      <label>
                      <textarea name="textarea3" cols="40" rows="3"></textarea>
                      </label>                 </td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td height="26"><label></label></td>
                  <td><label>
                    <input type="submit" name="Submit" value="Post" />
                    <input type="reset" name="Submit2" value="Reset" />
                  </label></td>
                </tr>
              </table>
            </form>
            <div align="right">
              <p class="style35">&nbsp;</p>
              <p class="style35"><a href="UserMain.jsp" class="style36">Back</a></p>
            </div>
          </div>
          <div class="clr"></div>
        </div>
        <div class="article">
          <h2 class="style31">&nbsp;</h2>
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
            <li>
              <p><a href="U_AddPost.jsp">Home</a></p>
              <p><a href="index.html">Log Out </a></p>
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
