<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Adding Filters..</title>
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
.style33 {color: #009900; font-size: 30px; }
.style34 {
	color: #FF6600;
	font-size: 30px;
}
.style35 {color: #9900FF;
	font-weight: bold;
}
.style36 {color: #9900FF}
.style12 {color: #009900}
.style41 {color: #FFFF00}
.style42 {color: #FF0000}
.style43 {font-weight: bold; font-size: 13px;}
.style44 {font-weight: bold; font-size: 14px;}
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
          <h2 class="style1"><span class="style34"><span class="style12">Adding Filters..</span></span></h2>
          <p class="infopost">&nbsp;</p>
          <div class="clr"></div>
       
          <div>
            <form action="S_AddFilters1.jsp" method="post"  name="form1" id="form1">
              <table width="648" border="0" align="center">
                <tr>
                  <td width="176" height="51" bgcolor="#FF0000"><div align="center" class="style41"><span class="style43"> Select Filter Category </span> <span class="style44">:</span></div></td>
                  <td width="462"><label>
                    <select name="filter">
						 <option> ---Select--- </option>
						 <option> Positive</option>
						 <option> Negative </option>				
				    </select>
                  </label></td>
                </tr>


                <tr>
                  <td height="63" bgcolor="#FF0000"><div align="center" class="style41"><span class="style43">Filter Name </span>  <span class="style44">:</span></div></td>
                  <td>
                      <label>
                      <input name="word" type="text" size="40" />
                      </label>                  </td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td height="26"><label></label></td>
                  <td><label>
                    <input type="submit" name="Submit" value="Add" />
                    <input type="reset" name="Submit2" value="Reset" />
                  </label></td>
                </tr>
              </table>
            </form>
            <div align="right">
              <p class="style35"><a href="ServerMain.jsp" class="style36">Back</a></p>
            </div>
          </div>
          <div class="clr"></div>
        </div>
        <div class="article">
          <h2 class="style31"><span class="style33">View All Filter Words..</span><strong>  
            <%@ include file="connect.jsp" %>
            <br />
          </strong></h2>
          <strong><table width="417" border="1"  cellpadding="0" cellspacing="0"  >
        <tr bgcolor="#99CCCC">
          <td  width="253" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style3 style41" ><strong>Filter Category</strong></div></td>
          <td  width="237" height="34" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style3 style41" ><strong>  Filter Name </strong></div></td>
        </tr>
         
		 
		   
            <%
					 
				
					  String s0="",s1="",s2="",s3="",s4="",s5="",s6="";
					  int i=1,j=0,count=0,rank=0,k=0;
					
						try 
						{
							
						   	String query="select * from filters "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								
								s0=rs.getString(2);
								s1=rs.getString(3);
								
								
								
								
					%>
           <tr>
              <td height="43"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style4 style14 style16 style42" >
                    <div align="center">
                    <%out.println(s0);%>
                </div>
             </div></td>
			  
			  <td height="43"  valign="middle" bgcolor="#FFFFFF">
                  <div align="center" class="style4 style14 style16 style42" >
                    <div align="center">
                    <%out.println(s1);%> 
                </div>
             </div></td>
           </tr>
            <%
					
						
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					
					
					
					%>
        </table>
		  </strong>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
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
              <p><a href="S_AddFilters.jsp">Home</a></p>
              <p><a href="index.html">Log Out </a></p>
            </li>
          </ul>
        </div>
        <div class="gadget">
          <h2 class="star">Concepts</h2>
          <div class="clr"></div>
          <ul class="ex_menu">
            <li>Feedback control,<br />
              information spread and sharing,<br />
              online social networks (OSNs), Pontryagin’s maximum<br />
              principle.<br />
            </li>
            <li><br />
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
