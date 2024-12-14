<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Main Page</title>
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
.style12 {color: #009900}
.style17 {color: #0000FF}
.style18 {
	color: #FF0000;
	font-weight: bold;
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
          <h2 class="style1"><span class="style12">Welcome to<span class="style17"> <%=(String)application.getAttribute("uname")%></span>.. </span></h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
          <div class="img"><img src="images/Architecture.jpg" width="198" height="230" alt="" class="fl" /></div>
          <div class="post_content">
            <p align="justify"><span class="style18">we propose an efficient feedback control mechanism for the simultaneous spread of the positive and negative information in OSNs. Specifically, a novel computational model is first proposed to present the temporal dynamics of the positive and negative information spread. Furthermore, the proposed mechanism restrains the negative information spread with minimal system expenses by devising and performing three synergetic intervention strategies. Technically, this mechanism intensively evaluates the number of seed users performing three intervention strategies. Besides, each seed user performs the received control task independently, and then the control plan for the next time step is adjusted dynamically according to the previous feedback results. Finally, we evaluate the efficiency of the proposed mechanism based on the extensive experimental results obtained from two real-world networks.</span></p>
            <p>&nbsp;</p>
          </div>
          <div class="clr"></div>
        </div>
        <div class="article">
          <h2>&nbsp;</h2>
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
          <h2 class="star">User Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li class="style18"><a href="UserMain.jsp">Home</a></li>
             <li class="style18"><a href="UserProfile.jsp">View Your Profile</a></li>
            <li class="style18"><a href="SearchFriend.jsp">Search Friends / Request </a></li>
            <li class="style18"><a href="ViewRequest.jsp">View Friend Requests </a></li>
            <li class="style18"><a href="U_AddPost.jsp">Add Posts </a> </li>
            <li class="style18"><a href="U_MyPosts.jsp">View My Posts </a></li>
            <li class="style18"><a href="U_FriendsPosts.jsp">View Friends Posts </a></li>
            <li class="style18"><a href="U_ViewFriendsPosts.jsp">View  Friend Posts and Give Feedback </a></li>
           
           
            <li><span class="style18"><a href="index.html">Log Out </a></span></li>
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
