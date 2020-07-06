<%-- 
    Document   : registerfront
    Created on : 5 jul. 2020, 20:31:18
    Author     : Light
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
        
    int id;

    if (request.getParameter("id") != null) {
        id = Integer.parseInt(request.getParameter("id"));

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
          <a class="nav-link" href="#">Comprar</a>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Opciones</a>
        </li>
      </ul>
      <form class="form-inline mt-2 mt-md-0">
        <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
      </form>
    </div>
  </nav>
    </header>
    <% if(request.getParameter("id")!=null){%>
                <form class="form-signin" action="EditMark.jsp" method="POST">
                   <%}else{%>
                   <form class="form-signin" action="OnNewMark.jsp" method="POST"><%}%>


        <body>
            <div class="form-label-group text-center-mb-4">
                <div class="text-center mb-4">
                    <img class="mb-4 rounded-circle" src="https://images.clipartlogo.com/files/istock/previews/1009/100974333-registered-tm-trademark-icon-intellectual-work.jpg" alt="" width="150">

                </div>
                Nombre
                <div><input type="text" name="Nombre" id="inputname" class="form-control" placeholder="Nombre" required autofocus/> </div>
               </div>
            <input type="submit" value="Enviar" class="btn btn-dark btn-block"/>
                    
                    <input type="reset" value="Limpiar" class="btn btn-outline-dark btn-block"/>
            
    
    </form>
</body>
</html>
