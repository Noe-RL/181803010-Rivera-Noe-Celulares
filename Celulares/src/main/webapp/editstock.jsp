<%-- 
    Document   : addcolor
    Created on : 29 jul. 2020, 18:41:50
    Author     : Light
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Config.*"%>
<%@page import="Obj.*"%>
<!DOCTYPE html>
<%
    int cantidad;
    
    almacenBD almacen = new almacenBD();
    int id;

    if (request.getParameter("id") != null) {
        id = Integer.parseInt(request.getParameter("id"));
         almacen query  = new almacen();
         
         query =almacen.find(new almacen(id));
         cantidad = query.getCantidad();
         
    } else {
        id = 0;
        cantidad=0;

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
    


        <body>
            <% if(request.getParameter("id")!=null){%>
                <form class="form-signin" action="oneditstock.jsp" method="POST">
                   <%}%>
           <%if(request.getParameter("id")!=null){%>
                    <input type="hidden" name="id_producto" value="<%=id%>">
                    <%}%>
                </div>
                Cantidad stock
                <div><input type="number" name="cantidad" value="<%=cantidad%>"  class="form-control" placeholder="cantidad" required autofocus/> </div>
               </div>
            <input type="submit" value="Enviar" class="btn btn-dark btn-block"/>
                    
                    <input type="reset" value="Limpiar" class="btn btn-outline-dark btn-block"/>
            
    
    </form>
</body>
</html>