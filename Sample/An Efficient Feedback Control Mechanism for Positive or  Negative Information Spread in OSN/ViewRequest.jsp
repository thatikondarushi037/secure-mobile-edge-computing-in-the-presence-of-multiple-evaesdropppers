<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Friend Requests..</title>
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
.style31 {font-size: 30px}
.style34 {
	color: #0000FF;
	font-weight: bold;
}
.style7 {color: #FFFFFF}
.style46 {
	color: #FF00FF;
	font-weight: bold;
}
.style51 {color: #FF00FF}
.style52 {color: #FF0000}
.style60 {color: #FF6600; font-weight: bold; font-size: 13px; }
.style61 {color: #0000FF}
.style63 {color: #000000; font-weight: bold; font-size: 15px; }
.style64 {color: #FFFF00}
.style65 {color: #FFFF00; font-weight: bold; font-size: 15px; }
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
          <h2 class="style1"><span class="style12">Friend Requests To<span class="style52"> ::</span><span class="style51"> <%=application.getAttribute("uname")%></span></span></h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
       
          <div>
            <div>
              <table width="646" border="3" align="center"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse; margin:10px 0px 0px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
                <tr>
                  <td  width="118" height="30" align="center" valign="bottom" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style63 style64">Username</div></td>
                  <td  width="127" height="30" align="center" valign="bottom" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style65">Mobile</div></td>
                  <td  width="142" height="30" align="center" valign="bottom" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style65">Address</div></td>
                  <td  width="123" height="30" align="center" valign="bottom" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style65">Gender</div></td>
                  <td  width="101" height="30" align="center" valign="bottom" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style65">Status</div></td>
                </tr>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
                <%
					  	String uname = (String)application.getAttribute("uname");
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
						int i=0;
						try 
						{
						 
								String status="";
								String query1="select * from frequest where requestto='"+uname+"'"; 
								Statement st1=connection.createStatement();
								ResultSet rs1=st1.executeQuery(query1);
								while(rs1.next())
								{
									int j = rs1.getInt(1);
									s1=rs1.getString(2);
									status = rs1.getString(5);
									
									String query="select * from user where username='"+s1+"'"; 
									Statement st=connection.createStatement();
									ResultSet rs=st.executeQuery(query);
									if( rs.next()==true )
									{
											s7=rs.getString(2);
											s3=rs.getString(5);
											s4=rs.getString(6);
											s5=rs.getString(8);
										
											
						
					%>
                <tr>
                  <td  width="118" height="54" align="center" valign="middle" style="color:#000000;"><span class="style60">&nbsp;&nbsp;
                        <%out.println(s1);%>
                  </span></td>
                  <td  width="127" height="54" align="center" valign="middle"><span class="style60">&nbsp;&nbsp;
                        <%out.println(s3);%>
                  </span></td>
                  <td height="54" align="center"  valign="middle"><span class="style60">&nbsp;&nbsp;
                        <%out.println(s4);%>
                  </span></td>
                  <td height="54" align="center"  valign="middle"><span class="style60">&nbsp;&nbsp;
                        <%out.println(s5);%>
                  </span></td>
                  <%
						if(status.equalsIgnoreCase("waiting"))
						{
						
						%>
                  <td  width="101" valign="middle" height="54" style="color:#000000;"align="center"><a href="updaterequest1.jsp?rid=<%=j%>" class="style34">waiting</a></td>
                  <%
						}
						else
						{
						%>
                  <td  width="17" valign="middle" height="54" style="color:#000000;"align="center"><span class="style7">
                    <span class="style61">
                    <%out.println(status);%>
                    </span>&nbsp;</span></td>
                  <%
						}
						%>
                </tr>
                <%
						}
						}
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
                  <td  valign="baseline" height="0">&nbsp;</td>
                  <td  valign="baseline" height="0">&nbsp;</td>
                  <td  valign="baseline" height="0">&nbsp;</td>
                </tr>
              </table> 
              <p align="right">&nbsp;</p>
              <p align="right"><a href="UserMain.jsp" class="style46">Back</a></p>
            </div>
          </div>
       
      
           
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
              <p><a href="ViewRequest.jsp">Home</a></p>
              <p><a href="index.html">Log Out</a></p>
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
