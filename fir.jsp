<%-- 
    Document   : fir
    Created on : 01-Jun-2022, 5:44:44 pm
    Author     : mayan
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="pink">
        <br><br><br><br><br><br><br>
        <%
           double temp=Double.parseDouble(request.getParameter("temp").toString()); 
           String convert=request.getParameter("select");
           double convert=0;
            if(convert.equals("CtF"))
            {
            convert = (select * 1.8) +32;
            }
            if(convert.equals("FtC"))
            {
            convert = (select - 32) / 1.8;
            }
        %>
    <center>
         <table border="1">
                <thead>
                    <tr>
                        <th colspan="2">Temperature Conversion</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Temperature</td>
                        <td><%=temp%><td>
                    </tr>
                    <tr>
                        <td>Centigrade to Faherenhite</td>
                        <td><%=convert%> </td>
                    </tr>
                    <tr>
                        <td>Faherenhite to Centigrade</td>
                        <td><%=convert%></td>
                    </tr>
                    
                </tbody>
            </table>

        
    </center>
    
        
    </body>
</html>
