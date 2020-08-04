<%-- 
    Document   : onnewmark
    Created on : 15 jul. 2020, 12:34:54
    Author     : Light
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Config.*"%>
<%@page import="Obj.*"%>
<!DOCTYPE html>
<%
    boolean flag;
    marcaBD marca = new marcaBD();
   
    flag = marca.AddNew( new marca(request.getParameter("Marca")));

    %>

<!DOCTYPE html>
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
     <%
        if(flag=true){ 
        %>
    <form class="form-signin">
        <div class="text-center alert alert-dark" role="alert">
            Marca agregada exitosamente
        </div>
            
        
        
       <div class="text-center">
        <a href="Index.jsp" type="button" class="btn btn-success btn-ld">Volver al Índice</a>
  
    <%}else{%>
     <form class="form-signin">
        <div class="text-center alert alert-dark" role="alert">
           No pudo agregarse la marca, verifique
        </div>
            
        
        
       <div class="text-center">
        <a href="Index.jsp" type="button" class="btn btn-success btn-ld">Volver al Índice</a>
    </div><%}%>
    </form>
          </body>


</html>