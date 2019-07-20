<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 align="center">lISTADO DE USUARIOS</h1>
        <table border="1" width="600" align="center">
            <tr>
                <th colspan="5"> 
                    Mantenimiento de usuarios
                </th>
                <th><img src="Iconos/user.png" width="50" height="50"</th>
            </tr>
            <tr bgcolor="skyblue">
                <th>
                    Codigo
                </th>
                <th>Nombre</th>
                <th>Edad</th>
                <th>Sexo</th>
                <th>Password</th>
                  <th>Accion</th>
                
            </tr>
            <%
                Connection cnx=null;
                Statement sta=null;
                ResultSet rs=null;
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    cnx=DriverManager.getConnection("jdbc:mysql://localhost/CursoJSP?user=root&password=");
                    sta=cnx.createStatement();
                    rs=sta.executeQuery("select * from usuarios");
                    while (rs.next()){
                       %>
                       <tr>
                           <th><%=rs.getString(1)%></th>
                           <th><%=rs.getString(2)%></th>
                           <th><%=rs.getString(3)%></th>
                           <th><%=rs.getString(4)%></th>
                           <th><%=rs.getString(5)%></th>
                       </tr>
                       <%
                    }
sta.close();
rs.close();
cnx.close();

                }catch (Exception e){}
                %>
        </table>
               
    </body>
</html>
