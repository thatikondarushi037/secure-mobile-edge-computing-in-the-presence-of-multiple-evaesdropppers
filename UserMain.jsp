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
        <h1 class="style6"><a href="#">Secure Mobile Edge Computing Networks in the Presence of Multiple Eavesdroppers
</a></h1>
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
          <h2 class="style1"><span class="style12">Welcome ::<span class="style17"> <%=(String)application.getAttribute("uname")%></span></span></h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
          <div class="img">
            <p>&nbsp;</p>
            <p>&nbsp;</p>
            <p><img src="images/Architecture.jpg" width="198" height="230" alt="" class="fl" /></p>
          </div>
          <div class="post_content">
            <p align="justify"><span class="style18">In this paper, we investigate a secure mobile edge computing (MEC) network in the presence of multiple eavesdroppers, where multiple users can offload parts of their tasks to the computational access point (CAP). The multiple eavesdroppers may overhear the confidential task offloading, which leads to information leakage. In order to address this issue, we present the minimization problem of the secrecy outage probability (SOP), by jointly taking into account the constraints from the latency and energy consumption. With the aim to improve the system secrecy performance, we then introduce three user selection criteria to choose the best user among multiple ones. Specifically, criterion I maximizes the locally computational capacity, while criterion II and III maximize the secrecy capacity and data rate of main links, respectively. For these criteria, we further analyze the system secrecy performance by deriving analytical and asymptotic expressions for the SOP, from which we can conclude important insights for the system design. Finally, simulation and analytical results are provided to verify the proposed analysis. The results show that the three criteria can efficiently safeguard the MEC networks, compared to the traditional local computing and fully offloading, especially with a large value of user number...</span></p>
          </div>
          <div class="clr">
            <p>&nbsp;</p>
            <p>&nbsp;</p>
          </div>
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
           
			<li class="style18"><a href="U_Upload_Datasets.jsp">Upload Datasets </a></li>
			
			<li class="style18"><a href="U_Find_Attack_Type.jsp">Find Attack </a></li>
			
			<li class="style18"><a href="U_Find_Attacker_Type_Results_By_Hashcode.jsp">Find Attacker Type Results By Hashcode </a></li>
			
			
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
