 <%@ include file="connect.jsp" %>
		    <%@ page import="java.io.*"%>
		    <%@ page import="java.util.*" %>
		    <%@ page import="java.util.Date" %>
		    <%@ page import="com.oreilly.servlet.*"%>
		    <%@ page import ="java.text.SimpleDateFormat" %>
		    <%@ page import ="javax.crypto.Cipher" %>
		    <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
		    <%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
		    <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
		    <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
		    <%@ page import="java.sql.*,java.util.Random,java.security.KeyPair,java.security.KeyPairGenerator,java.security.NoSuchAlgorithmException,java.security.PublicKey,javax.crypto.Cipher,javax.crypto.NoSuchPaddingException" %>
		    <style type="text/css">
<!--
.style1 {color: #FFFF00}
.style3 {color: #FFFFFF}
.style6 {color: #FF0000}
-->
            </style>
		      




          <h2 class="style3">&nbsp;</h2>
         
          <div class="clr"></div>
           <%
					  
						// Creation Of Blockchain 
						
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15,hsign,s111;
						int i=0,j=1,k=0,rank=0;
												
						try 
						{
						String str1 = " select distinct(hcode) from dsdetails ";
						Statement st1 = connection.createStatement();
						ResultSet rs1 = st1.executeQuery(str1);
						while(rs1.next())
						{
						    hsign = rs1.getString(1);
						   	String query="select * from dsdetails  where hcode = '"+hsign+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
							int count=1;
					   		while ( rs.next() )
					   		{
							if(count==1)
							{
							count=count+1;
							s111=rs.getString(15);
							
							
							%>
         <style type="text/css">
<!--
.style1 {
	color: #FF0000;
	font-weight: bold;
}
-->
         </style>
				 
		
		   <table width="630" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
                <tr>
                  

 <td  width="26" height="34"  valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style56 style57 style2 style6">Rid</div></td>	 
 <td  width="26" height="34"  valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style56 style57 style2 style6">Source_IP	</div></td> 
 <td  width="26" height="34"  valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style56 style57 style2 style6">Source_Port</div></td>	 
 <td  width="26" height="34"  valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style56 style57 style2 style6">Destination_IP</div></td>	 
 <td  width="26" height="34"  valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style56 style57 style2 style6">Destination_Port</div></td>	 
 <td  width="26" height="34"  valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style56 style57 style2 style6">Protocol</div></td>	 
 <td  width="26" height="34"  valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style56 style57 style2 style6">Timestamp	</div></td> 
 <td  width="26" height="34"  valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style56 style57 style2 style6">Flow_Duration	</div></td> 
 <td  width="26" height="34"  valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style56 style57 style2 style6">Total_Fwd_Packets</div></td>	
 <td  width="26" height="34"  valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style56 style57 style2 style6">Flow_Bytes_per_second	</div></td> 
 <td  width="26" height="34"  valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style56 style57 style2 style6">Flow_Packets_per_second</div></td>	
 <td  width="26" height="34"  valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style56 style57 style2 style6">Fwd_Packets_per_second</div></td>	
 <td  width="26" height="34"  valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style56 style57 style2 style6">ACK_Flag_Count</div></td>	
 <td  width="26" height="34"  valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style56 style57 style2 style6">Status</div></td>
 <td  width="26" height="34"  valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style56 style57 style2 style6">Hcode</div></td>
                </tr>
		   
		 
         <h3 align="center">
<p align="center" class="style1"><span class="style1">Attacker Status By Cluster Chain--->::</span> <%=s111%><br>
			    <span class="style1">Attacker Status Hash Code --->::</span><%=hsign%></p>
	     </h3>
			<div align="center">
			  <%
							
							}
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(4);
								s4=rs.getString(5);
								s5=rs.getString(6);
								s6=rs.getString(7);
								s7=rs.getString(8);
								s8=rs.getString(9);
								s9=rs.getString(10);
								s10=rs.getString(11);
								s11=rs.getString(12);
								s12=rs.getString(13);
								s13=rs.getString(14);
								s14=rs.getString(15);
								s15=rs.getString(16);
					
					
					%>
	      <tr>
				
				
                  <td height="0" align="center"  valign="middle"><p align="center" class="style22 style37 style54 style55 style6">&nbsp;</p>
                      <div align="center" class="style22 style37 style54 style55 style6">
                        <div align="center">
                          <%out.println(s1);%>
                          </div>
                      </div></td>
                  <td width="116" rowspan="1" align="center" valign="middle" ><div class="style22 style37 style54 style55 style6" style="margin:10px 13px 10px 13px;" >
                     <div align="center">
                       <%out.println(s2);%>
                    </div>
                  </div></td>
                  <td height="0" align="center"  valign="middle"><p align="center" class="style22 style20 style37 style54 style55 style6">&nbsp;</p>
                      <div align="center" class="style22 style20 style37 style54 style55 style6">
                        <div align="center">
                          <%out.println(s3);%>
                        </div>
                        <p align="center">&nbsp; </p>
                      </div></td>
                  <td height="0" align="center"  valign="middle"><p align="center" class="style22 style20 style37 style54 style55 style6">&nbsp;</p>
                      <div align="center" class="style22 style20 style37 style54 style55 style6">
                        <div align="center">
                            <%out.println(s4);%>
                        </div>
                        <p align="center">&nbsp; </p>
                      </div></td>
                  <td height="0" align="center"  valign="middle"><p align="center" class="style22 style20 style37 style54 style55 style6">&nbsp;</p>
                      <div align="center" class="style22 style20 style37 style54 style55 style6">
                        <div align="center">
                          <%out.println(s5);%>
                        </div>
                        <p align="center">&nbsp; </p>
                      </div></td>
                 
                  <td width="36" height="0" align="center"  valign="middle"><div align="center" class="style22 style20 style37 style55 style58 style6">
                      <div align="center">
                        <%out.println(s6);%>
                    </div>
                  </div></td>	
				  
				   <td width="36" height="0" align="center"  valign="middle"><div align="center" class="style22 style20 style37 style55 style58 style6">
                      <div align="center">
                        <%out.println(s7);%>
                     </div>
			      </div></td>	
				  
				   <td width="36" height="0" align="center"  valign="middle"><div align="center" class="style22 style20 style37 style55 style58 style6">
                      <div align="center">
                        <%out.println(s8);%>
                     </div>
			      </div></td>	
				  
				   <td width="36" height="0" align="center"  valign="middle"><div align="center" class="style22 style20 style37 style55 style58 style6">
                      <div align="center">
                        <%out.println(s9);%>
                     </div>
			      </div></td>	
				  
				   <td width="36" height="0" align="center"  valign="middle"><div align="center" class="style22 style20 style37 style55 style58 style6">
                     <div align="center">
                      <%out.println(s10);%>
                     </div>
			      </div></td>	
				  
				   <td width="36" height="0" align="center"  valign="middle"><div align="center" class="style22 style20 style37 style55 style58 style6">
                      <div align="center">
                        <%out.println(s11);%>
                     </div>
			      </div></td>	
				   <td width="36" height="0" align="center"  valign="middle"><div align="center" class="style22 style20 style37 style55 style58 style6">
                      <div align="center">
                       <%out.println(s12);%>
                     </div>
			      </div></td>	
				   <td width="36" height="0" align="center"  valign="middle"><div align="center" class="style22 style20 style37 style55 style58 style6">
                      <div align="center">
                        <%out.println(s13);%>
                     </div>
			      </div></td>	
				   <td width="36" height="0" align="center"  valign="middle"><div align="center" class="style22 style20 style37 style55 style58 style6">
                      <div align="center">
                         <%out.println(s14);%>
                     </div>
			      </div></td>	
				   <td width="36" height="0" align="center"  valign="middle"><div align="center" class="style22 style20 style37 style55 style58 style1">
                      <div align="center">
                        <%out.println(s15);%>
                     </div>
			      </div></td>	
             </tr>
 	
	    <%
					 
			   }
			   
			    }
					 
%>
</table>
<p>&nbsp;</p>
<%
			 
			j=1;}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%> 