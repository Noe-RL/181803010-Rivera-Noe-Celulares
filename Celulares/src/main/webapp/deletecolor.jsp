<%-- 
    Document   : deletecolor
    Created on : 3 ago. 2020, 8:09:28
    Author     : Light
--%>

<%-- 
    Document   : deletemark
    Created on : 15 jul. 2020, 15:23:26
    Author     : Light
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% int id ;
   id = Integer.parseInt(request.getParameter("id"));%>
<!DOCTYPE html>
<html><head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link rel="stylesheet" href="https://getbootstrap.com/docs/4.5/examples/sign-in/signin.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://kit.fontawesome.com/5c4728a2cc.js" crossorigin="anonymous"></script>
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
          <a class="nav-link " href="stock.jsp" tabindex="-1" aria-disabled="true">Stock</a>
        </li>
      </ul>
      <form class="form-inline mt-2 mt-md-0">
       
      </form>
    </div>
  </nav>
</header>


<body>
    <form class="form-signin">
        <div class="text-center alert alert-dark" role="alert">
            ¿Seguro que desea eliminar este color?
        </div>
        <div class="text-center">
            <a href="Index.jsp" type="button" class="btn btn-dark btn-ld">Cancelar</a>
            <a href="ondeletecolor.jsp?id=<%=id%>" type="button" class="btn btn-danger ">Eliminar</a>
        </div>
</body>
</form>
</html>
