<%-- 
    Document   : prueba
    Created on : 4 ago. 2020, 18:04:19
    Author     : Light
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Config.*"%>
<%@page import="Obj.*"%>
<!DOCTYPE html>
<%
    boolean flag;
    int id=0;
    
    almacenBD almacen = new almacenBD();
    id= almacen.getId();
    
    out.println(id);
    
    

    %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
