<%



	
	 On Error Resume Next

   
	set conexion = Server.CreateObject ("ADODB.Connection")
	conexion.Open "driver={MySQL ODBC 5.1 Driver};server=127.0.0.1;user id=root;password=;database=sg" 
  
	set RS = Server.CreateObject ("ADODB.RecordSet")
	RS.LockType = 2


	set RS2 = Server.CreateObject ("ADODB.RecordSet")
	RS2.LockType = 2
    
    If Err.Number <> 0 Then
    
        %>
        <div style="  text-align: center;  padding: 200px;">
			<img src="/odtweb/static/img/bloqueado.png">
			<span style="font-size: 20px;position: relative;top: -27px;font-family: arial;">Por el momento el Sistema est� inaccesible.</span>
            <br>
            <span style="font-size: 14px;position: relative;top: -28px;font-family: arial;left: -58px;color: gray;">Vuelva a intentar en unos minutos.</span>
		</div>
        <%
        
        Response.End
        
    End If

    On Error Goto 0 
  
	



%>