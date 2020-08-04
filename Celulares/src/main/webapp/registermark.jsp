<%-- 
    Document   : registerfront
    Created on : 5 jul. 2020, 20:31:18
    Author     : Light
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Config.*"%>
<%@page import="Obj.*"%>
<!DOCTYPE html>
<%
    String mark="";
    marcaBD marca = new marcaBD();
    int id;

    if (request.getParameter("id") != null) {
        id = Integer.parseInt(request.getParameter("id"));
         marca querymark  = new marca();
         
         querymark=marca.findmark(new marca(id));
         mark = querymark.getMarca();
         
    } else {
        id = 0;

    }

    
    
    
    %>
<html><head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link rel="stylesheet" href="https://getbootstrap.com/docs/4.5/examples/floating-labels/floating-labels.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>NetNavi - Inicio</title>
    </head>

<body class="d-flex flex-column h-100">
    <header>
  <!-- Fixed navbar -->
  <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
    <a class="navbar-brand" href="Startpage.jsp">NETnavi</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarCollapse">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item active">
          <a class="nav-link" href="Index.jsp">Catálogo <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="pricing.jsp">Comprar</a>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Opciones</a>
        </li>
      </ul>
      <form class="form-inline mt-2 mt-md-0">       
      </form>
    </div>
  </nav>
    </header>
    <% if(request.getParameter("id")!=null){%>
                <form class="form-signin" action="editmark.jsp" method="POST">
                   <%}else{%>
                   <form class="form-signin" action="onnewmark.jsp" method="POST"><%}%>


        <body>
            <div class="form-label-group text-center-mb-4">
                <div class="text-center mb-4">
                    <img class="mb-4 rounded-circle" src="https://images.clipartlogo.com/files/istock/previews/1009/100974333-registered-tm-trademark-icon-intellectual-work.jpg" alt="" width="150">
                    <%if(request.getParameter("id")!=null){%>
                    <input type="hidden" name="id_marca" value="<%=id%>">
                    <%}%>
                </div>
                Nombre
                <div><input type="text" name="Marca" value="<%=mark%>"  class="form-control" placeholder="Model" required autofocus/> </div>
               </div>
            <input type="submit" value="Enviar" class="btn btn-dark btn-block"/>
                    
                    <input type="reset" value="Limpiar" class="btn btn-outline-dark btn-block"/>
            
    
    </form>
</body>
</html>
