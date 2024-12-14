<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Posts Details..</title>
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
.style15 {color: #FF0000}
.style69 {color: #FF00FF}
.style70 {
	color: #FF6600;
	font-weight: bold;
}
.style71 {
	font-weight: bold;
	color: #000000;
}
.style17 {color: #0000FF}
.style76 {color: #006600}
.style77 {font-size: 14px}
.style78 {font-family: "Courier New", Courier, monospace}
.style79 {color: #FFFF00}
.style80 {color: #FFFF00; font-weight: bold; }
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
          <h2 class="style1"><span class="style34"><span class="style12">Post <span class="style17"><%=request.getParameter("title")%></span>  Details.. </span></span></h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
       
  
            <div>
			<%@ include file="connect.jsp" %>
			<%
					
					try
					{
					String title=request.getParameter("title");
					
					String loguser = (String)application.getAttribute("uname");
			
					String str1="select * from posts where title='"+title+"' "; 
					Statement st1=connection.createStatement();
					ResultSet rs1=st1.executeQuery(str1);
					while ( rs1.next() )
					{
						int i=rs1.getInt(1);
				
						String uses = rs1.getString(4);
						String description = rs1.getString(5);
						String comment = rs1.getString(6);
						String date = rs1.getString(7);
						
						
			%>
              <table border="1" align="left" cellpadding="0" cellspacing="0" >
                  <tr >
                    <td width="153" rowspan="4" ><div class="style22 style4 style5" style="margin:10px 13px 10px 13px;" >
                      <div align="center"><a class="#" id="img1" href="#" >
                        <input  name="image" type="image" src="images.jsp?imgid=<%=i%>" style="width:120px; height:120px;" />
                        </a> </div>
                    </div></td>
                    <td height="47" bgcolor="#FF0000" ><div align="center" class="style70 style79">Post Title  </div></td>
                    <td><div align="center" class="style69"><strong><%= title%></strong></div></td>
                  </tr>
                  <tr >
                    <td height="47" bgcolor="#FF0000" ><div align="center" class="style80"> Date  </div></td>
                    <td><div align="center" class="style69"><strong><%= date%></strong></div></td>
                  </tr>
                  <tr >
                    <td height="47" bgcolor="#FF0000" ><div align="center" class="style80">Post Uses  </div></td>
                    <td><div align="center" class="style69"><strong><%= uses%></strong></div></td>
                  </tr>
                <tr >
                  <td width="131" height="74" bgcolor="#FF0000" ><div align="center" class="style80">Post Description  </div></td>
                  <td><div align="center" class="style69"><strong><%= description%></strong></div></td>
                </tr>
               
                <tr>
                  <td height="74" ><div align="center"><strong><span class="style17" style="color:#FF6600">Creator's Message</span> </strong></div></td>
                  <td colspan="2"><div align="center" class="style69"><strong><%= comment%></strong></div></td>
                </tr>
				 <%
						int a=0;
						String str2="select * from postcomments where title='"+title+"' "; 
						Statement st2=connection.createStatement();
						ResultSet rs2=st2.executeQuery(str2);
						while ( rs2.next() )
						{
							String c_user = rs2.getString(2);
							String c_comment = rs2.getString(4);
							String c_date = rs2.getString(5);
							
							Statement stmt3=connection.createStatement();
							String strQuery3 = "select requestfrom,requestto from frequest where ((requestfrom ='"+loguser+"' and requestto='"+c_user+"') ||(requestfrom ='"+c_user+"' and requestto='"+loguser+"'))and status ='Accepted' ";
							ResultSet rs3 = stmt3.executeQuery(strQuery3);
							if(rs3.next()==true)
							{
								if(a==0){
					%>
                
                <tr>
                  <td  width="153" valign="middle" height="20" style="color: #2c83b0;"><div align="left " class="style15 style11 style71 style77" style="margin-left:20px;">
                    <div align="center">Comment By</div>
                  </div></td>
                  <td  width="131" columnspan="2" valign="middle" height="20" style="color: #2c83b0;"><div align="left " class="style15 style11 style71 style77" style="margin-left:20px;">
                    <div align="center">Date</div>
                  </div></td>
                  <td  width="305" height="20" align="center" valign="middle" style="color: #2c83b0;" columnspan="2"><div align="left " class="style15 style11 style71 style77" style="margin-left:20px;">
                    <div align="center">Comment Details</div>
                  </div></td>
                </tr>
              <%a=1;}%>

                <tr>
                  <td height="48"><div align="center" class="style78 style76 style10 style9"><strong><%= c_user%></strong></div></td>
                  <td><div align="center" class="style78 style76 style10 style9"><strong><%= c_date%></strong></div></td>
                  <td><div align="center" class="style78 style76 style10 style9"><strong><%= c_comment%></strong></div></td>
                </tr>
               <%}}%>
                <tr>
                  <td height="57"><div align="left " class="style15 style11" style="margin-left:20px;">
                      <div align="center"><strong>Post Your Comment </strong></div>
                  </div></td>
                  <td colspan="2"><form id="form1" name="form1" method="post" action="postsubmit1.jsp">
				  
                      <input type="text" name="comment" size="40" height="30"/>
                      <input type="hidden" value="<%=loguser%>" name="username"/>
					  <input type="hidden" value="<%=title%>" name="p_Name"/>
                      <input type="submit" name="Submit" value="Post" />
                  </form></td>
                </tr><br/>
              </table>
                <%
		}
		connection.close();
	}
	catch(Exception e)
	{
		out.println(e.getMessage());
	}
%>
              
              <p>&nbsp;</p>
            </div>

          <div class="clr"></div>
          <div align="right"><a href="U_MyPosts.jsp" class="style63">Back</a></div>
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
              <p><a href="#">Home</a></p>
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
