<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>S_All_Negative_Feedback</title>
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
.style63 {color: #9900FF;
	font-weight: bold;
	font-size: 12px;
}
.style5 {color: #66CCFF;
	font-size: 21px;
	font-weight: bold;
}
.style66 {color: #FF0000}
.style67 {font-size: 16px}
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
          <li><a href="UserLogin.jsp"><span>User </span></a></li>
          <li class="active"><a href="ServerLogin.jsp"><span>Admin</span></a></li>
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
          <h2 class="style1"><span class="style34"><span class="style12">View All Negative Feedback.. </span></span></h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
       
          <div>
            <div>
               <%@ include file="connect.jsp"%>

 <table width="778" border="1">
				  
				  <tr>
				   <td width="98" height="33" bgcolor="#FFFF00" ><div align="left" class="style4 style35 style2 style11 style5 style66 style67">
						<div align="center"><strong>ID </strong></div>
					</div></td>
				  <td width="132" bgcolor="#FFFF00" ><div align="left" class="style4 style35 style2 style11 style5 style66 style67">
						<div align="center"><strong>Post Name </strong></div>
					</div></td>
					<td width="107" bgcolor="#FFFF00" ><div align="left" class="style4 style35 style2 style11 style5 style66 style67">
						<div align="center"><strong> User Name</strong></div>
					</div></td>
					<td width="200" bgcolor="#FFFF00" ><div align="left" class="style4 style36 style2 style11 style5 style66 style67">
						<div align="center" class="style13">Feedback Details </div>
					</div></td>
					<td width="207" bgcolor="#FFFF00"><div align="left" class="style37 style4 style11 style5 style66 style67">
						<div align="center">Date and Time</div>
					</div></td>
				  </tr>

<%
		   			  
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="", pos="Negative",s22="" ;
	int i=0,poscnt=0,negcnt=0,strcnt=0;
	int count1=0;
	String ftype="Negative";
	
	try
	{
			String sql3="select user,title from posts";
			Statement st3=connection.createStatement();
			  ResultSet rs3=st3.executeQuery(sql3);
			while ( rs3.next() )
			   {
			   s1=rs3.getString(1);
			   s7=rs3.getString(2);
			   int count=0;
			%>
<style type="text/css">
<!--
.style2 {
	font-weight: bold;
	color: #FFFFFF;
}
.style4 {font-weight: bold}
.style5 {color: #FF0000}
-->
</style>
       
				 
				  <%

				  String query="select * from postcomments where title='"+s7+"' "; 
				   Statement st=connection.createStatement();
				   ResultSet rs=st.executeQuery(query);
				while ( rs.next() )
			   {
					i=rs.getInt(1);//id
					s2=rs.getString(3); //pname
					s22=rs.getString(2); //uname
					s3=rs.getString(4).toLowerCase(); //  Comments
					s5=rs.getString(5);  // Date
					
					count++;

			   
			       String sql1="select * from filters where category='"+pos+"' ";
					Statement st1=connection.createStatement();
			  		ResultSet rs1=st1.executeQuery(sql1);
					while ( rs1.next() )
			   			{
			   			 String	t1=rs1.getString(2);
			             String t2=rs1.getString(3).toLowerCase();
			   			 	
							  if ((s3.contains(t2)))
									{ 
	
			                 count1++;
									 %>
							  <tr>
							  <td width="98" height="44" bgcolor="#FFFFFF"  style="color:#000000;"><div align="center" class="style32 style5 style11 style14 style66 style67"><strong><%=i%></strong></div></td>
								<td width="132" height="44" bgcolor="#FFFFFF"  style="color:#000000;"><div align="center" class="style32 style11 style14 style66 style67"><strong> <%=s2%></a></strong></div></td>
								<td width="107" height="44" bgcolor="#FFFFFF"  style="color:#000000;"><div align="center" class="style32 style11 style14 style66 style67"><strong> <%=s22%></a></strong></div></td>
								
								<td width="200" height="44" bgcolor="#FFFFFF"  style="color:#000000;"><div align="center" class="style32 style5 style11 style14 style66 style67"><strong><%=s3%></strong></div></td>
								<td width="207" height="44" bgcolor="#FFFFFF"  style="color:#000000;"><div align="center" class="style32 style5 style11 style14 style66 style67"><strong><%=s5%></strong></div></td>
		  </tr>
							  				
	    <%   					}

					      }
			      }
			        
			
				
				}
				 String sql11="Update results set No_Count="+count1+" where stype='"+pos+"' ";
					Statement st11=connection.createStatement();
			  		st11.executeUpdate(sql11);
   			
         connection.close();
		 }
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
	%></table>
        
              <p>&nbsp;</p>
            </div>
          </div>
          <div class="clr"></div>
          <div align="right"><a href="ServerMain.jsp" class="style63">Back</a></div>
        </div>
        <div class="article">
          <h2 class="style31">&nbsp;</h2>
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
