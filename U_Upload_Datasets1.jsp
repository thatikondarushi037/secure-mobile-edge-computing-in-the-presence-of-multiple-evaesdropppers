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
          <div class="clr"></div>
       
          <div>
            <div>
           
       <h2 class="star" align="left"><span><span class="style6">Datasets Uploaded Details !!! </span><span class="style6"></span> </span></h2>
          <p class="star" align="center">&nbsp;</p>
		  
		  
		  <%@page import="java.util.*"%>
<%@ include file="connect.jsp"%>
<%@page
	import="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec,org.bouncycastle.util.encoders.Base64"%>
<%@ page
	import="java.sql.*,java.util.Random,java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.security.DigestInputStream,java.math.BigInteger,java.security.MessageDigest,java.io.BufferedInputStream"%>
<%@ page
	import="java.security.Key,java.security.KeyPair,java.security.KeyPairGenerator,javax.crypto.Cipher"%>
<%@page
	import="java.util.*,java.text.SimpleDateFormat,java.util.Date,java.io.FileInputStream,java.io.FileOutputStream,java.io.PrintStream"%>
 
 
    <%@ page import ="java.io.FileNotFoundException" %>  
    <%@ page import ="java.io.IOException" %>  
    <%@ page import ="java.util.Iterator" %>  
    <%@ page import ="java.util.ArrayList" %> 
    <%@ page import="org.apache.poi.xssf.usermodel.*" %>
    <%@ page import ="org.apache.poi.hssf.usermodel.HSSFCell" %>  
    <%@ page import ="org.apache.poi.hssf.usermodel.HSSFRow" %>  
    <%@ page import ="org.apache.poi.hssf.usermodel.HSSFSheet" %>  
    <%@ page import ="org.apache.poi.hssf.usermodel.HSSFWorkbook" %>  
    <%@ page import ="org.apache.poi.poifs.filesystem.POIFSFileSystem" %>
    <%@ page import="org.apache.poi.ss.usermodel.Cell" %>
    <%@ page import ="org.apache.poi.ss.usermodel.Row"%>
    <%@ page import="org.apache.poi.ss.usermodel.Sheet" %>
    <%@ page import="org.apache.poi.ss.usermodel.Workbook" %>
    <%@ page import ="org.apache.poi.xssf.usermodel.XSSFWorkbook" %>
    <%@ page import="com.oreilly.servlet.MultipartRequest" %>
	
	
 
	
    <%
    try{
	
   	    String fname=request.getParameter("fname");
	
        long stime=System.currentTimeMillis();
		SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
		SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
		
		Date now = new Date();				
		String strDate = sdfDate.format(now);
		String strTime = sdfTime.format(now);
		String dt=strDate+" "+strTime;
						
						
		String sql="delete from dsdetails";
		Statement stmt = connection.createStatement();
		stmt.executeUpdate(sql);	
		
	   String Rid,	 
Source_IP,	 
Source_Port,	 
Destination_IP,	 
Destination_Port,	 
Protocol,	 
Timestamp,	 
Flow_Duration,	 
Total_Fwd_Packets,	
Flow_Bytes_per_second,	 
Flow_Packets_per_second,	
Fwd_Packets_per_second,	
ACK_Flag_Count,	
Status;
       connection.setAutoCommit(false);
       PreparedStatement pstm = null ;
       FileInputStream input = new FileInputStream(getServletContext().getRealPath("/")+"//"+fname);
	  
	  
       POIFSFileSystem fs = new POIFSFileSystem(input); //creating a new poi reference to the given excel file
       HSSFWorkbook wb = new HSSFWorkbook(fs);
       HSSFSheet sheet = wb.getSheetAt(0);
       Row row;
       Statement st=connection.createStatement();
       for(int i=1; i<=sheet.getLastRowNum(); i++){  //points to the starting of excel i.e excel first row
           row = (Row) sheet.getRow(i);  //sheet number
 
				 if( row.getCell(0)==null) { Rid = "0";}  //suppose excel cell is empty then its set to 0 the variable
                  else Rid = row.getCell(0).toString();   //else copies cell data to name variable
				  
                  if( row.getCell(1)==null) { Source_IP = "0";}  //suppose excel cell is empty then its set to 0 the variable
                  else Source_IP= row.getCell(1).toString();   //else copies cell data to name variable
				  
				  if( row.getCell(2)==null) { Source_Port = "0";}
				  else Source_Port = row.getCell(2).toString();
				  
				   if( row.getCell(3)==null) { Destination_IP = "0";}  
                  else Destination_IP = row.getCell(3).toString();   
				  
				  if( row.getCell(4)==null) { Destination_Port = "0";}
				  else Destination_Port = row.getCell(4).toString();
				  
				  if( row.getCell(5)==null) { Protocol = "0";}
				  else Protocol = row.getCell(5).toString();
				  
				  if( row.getCell(6)==null) { Timestamp = "0";}
				  else Timestamp = row.getCell(6).toString();
				  
				  if( row.getCell(7)==null) { Flow_Duration = "0";}
				  else Flow_Duration= row.getCell(7).toString();
				  
				  if( row.getCell(8)==null) { Total_Fwd_Packets= "0";}
				  else Total_Fwd_Packets = row.getCell(8).toString();
				  
				  if( row.getCell(9)==null) { Flow_Bytes_per_second= "0";}
				  else Flow_Bytes_per_second = row.getCell(9).toString();
				  
				  if( row.getCell(10)==null) { Flow_Packets_per_second= "0";}
				  else Flow_Packets_per_second	= row.getCell(10).toString();
				  
				  if( row.getCell(11)==null) { Fwd_Packets_per_second= "0";}
				  else Fwd_Packets_per_second	= row.getCell(11).toString();
			
				  if( row.getCell(12)==null) { ACK_Flag_Count= "0";}
				  else ACK_Flag_Count	= row.getCell(12).toString();
				  
				  if( row.getCell(13)==null) { Status= "0";}
				  else Status= row.getCell(13).toString();
				  
				  
				 
				 			  
				    String filename="filename.txt";
      				PrintStream p = new PrintStream(new FileOutputStream(filename));
					p.print(new String(Status));
			
					MessageDigest md = MessageDigest.getInstance("SHA1");
					FileInputStream fis11 = new FileInputStream(filename);
					DigestInputStream dis1 = new DigestInputStream(fis11, md);
					BufferedInputStream bis1 = new BufferedInputStream(dis1);
					//Read the bis so SHA1 is auto calculated at dis
					while (true) {
						int b1 = bis1.read();
						if (b1 == -1)
							break;
					}
 
					BigInteger bi1 = new BigInteger(md.digest());
					String spl1 = bi1.toString();
					String h1 = bi1.toString(16);
					
								
			        String ACK_Flag_Count1=ACK_Flag_Count.replace(".0","");	
					String Total_Fwd_Packets1=Total_Fwd_Packets.replace(".0","");	



			PreparedStatement ps=connection.prepareStatement("insert into 		  dsdetails(Rid,Source_IP,Source_Port,Destination_IP,Destination_Port,Protocol,Timestamp,Flow_Duration,Total_Fwd_Packets,Flow_Bytes_per_second,		     Flow_Packets_per_second,Fwd_Packets_per_second,ACK_Flag_Count,Status,hcode) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			
					
							
ps.setString(1,Rid);
ps.setString(2,Source_IP);
ps.setString(3,Source_Port);
ps.setString(4,Destination_IP);
ps.setString(5,Destination_Port);
ps.setString(6,Protocol);
ps.setString(7,Timestamp);
ps.setString(8,Flow_Duration);
ps.setString(9,Total_Fwd_Packets1);
ps.setString(10,Flow_Bytes_per_second);
ps.setString(11,Flow_Packets_per_second	);
ps.setString(12,Fwd_Packets_per_second);
ps.setString(13,ACK_Flag_Count1);
ps.setString(14,Status);
ps.setString(15,h1);
ps.executeUpdate();





			
				
       }
       connection.commit();
       pstm.close();
       connection.close();
       input.close();
 
   }catch(Exception e){
       
   }
 
 
%>
		  <h2>Datasets Imported Successfully !!!</h2>
		<a href="UserMain.jsp">Back</a>  
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
