<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Posts..</title>
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
.style12 {color: #009900}
.style22 {font-size: 16px; color: #FFFFFF; }
.style63 {color: #9900FF;
	font-weight: bold;
	font-size: 12px;
}
.style5 {color: #66CCFF;
	font-size: 21px;
	font-weight: bold;
}
.style55 {font-size: 14px}
.style57 {font-size: 15px}
.style62 {color: #FF00FF}
.style65 {color: #FF3300}
.style17 {color: #0000FF}
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
          <h2 class="style1"><span class="style34"><span class="style12">User <span class="style17"><%=(String)application.getAttribute("uname")%></span> Posts.. </span></span></h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
       
          <div>
            <div>
              <table width="646" border="1" align="center"  cellpadding="0" cellspacing="0">
                <tr>
                  <td  width="54"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style57 style62">Si No. </div></td>
                  <td  width="182" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style57 style62">Post Image </div></td>
                  <td  width="161" valign="middle" style="color: #2c83b0;"><div align="center" class="style5 style56 style57 style62">Post Name</div></td>
                  <td  width="239" valign="middle" height="34" style="color: #2c83b0;">&nbsp;</td>
                </tr>
                <%@ include file="connect.jsp" %>
                <%
					  
						String s1,s2,s3,s4,s5,s6,s7;
						int i=1;
						try 
						{
							String uname1 = (String)application.getAttribute("uname");
							
						   	String query="select title from posts where user='"+uname1+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								s1=rs.getString(1);
								
								
					%>
                <tr>
                  <td height="0" align="center"  valign="middle"><div align="center" class="style22 style5 style37 style54 style55 style65">
                      <%out.println(i);%>
                  </div></td>
                  <td height="0" align="center"  valign="middle"><div class="style22 style4 style5 style65" style="margin:10px 13px 10px 13px;" >
                      <div align="center"><a class="#" id="img1" href="#" >
                        <input  name="image" type="image" src="images2.jsp?imgname=<%=s1%>" style="width:140px; height:140px;" />
                      </a> </div>
                  </div></td>
                  <td align="center"  valign="middle"><div align="center" class="style22 style5 style20 style37 style54 style55 style65">
                      <%out.println(s1);%>
                  </div></td>
                  <td><label> </label>
                      <form method="post" action="U_MyPostsDetails.jsp">
                        <label>
                        <div align="center">
                          <p>
                            <input type="hidden" value="<%=s1%>" name="title"/>
                            <input type="submit" name="Submit" value="Posts Details" />
                          </p>
                        </div>
                        </label>
                      </form>                  </td>
                </tr>
                <%
						i+=1;}
						
					
			
connection.close();
}
catch(Exception e)
{
out.println(e.getMessage());
}
%>
                <tr>
                  <td  valign="baseline" height="0">&nbsp;</td>
                  <td  valign="baseline" height="0">&nbsp;</td>
                  <td  valign="baseline">&nbsp;</td>
                  <td  valign="baseline" height="0">&nbsp;</td>
                </tr>
              </table>
              <p>&nbsp;</p>
            </div>
          </div>
          <div class="clr"></div>
          <div align="right"><a href="UserMain.jsp" class="style63">Back</a></div>
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
              <p><a href="U_MyPosts.jsp">Home</a></p>
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
