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
                <form class="form-signin" action="OnEdit.jsp" method="POST">
                   <%}else{%>
                   <form class="form-signin" action="OnNew.jsp" method="POST"><%}%>


        <body>
            <div class="form-label-group text-center-mb-4">
                <div class="text-center mb-4">
                    <img class="mb-4 " src="https://icons.iconarchive.com/icons/paomedia/small-n-flat/1024/device-mobile-phone-icon.png" alt="" width="150">

                </div>
                       <%if(request.getParameter("id")!=null){%>
                    <input type="hidden" name="id_celular" value="<%=id%>">
                    <%}%>
                Nombre
                <div><input type="text" name="Nombre" id="inputname" class="form-control" placeholder="Nombre" required autofocus/> </div>

                <div>Modelo
                <input type="number" name="Model" class="form-control" placeholder="Modelo" required/>
                </div>
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <label class="input-group-text" for="colores">Color</label>
                    </div>
                    <select class="custom-select" id="Colores">
                        <option selected>Elije un color...</option>
                        <option value="1">Rojo</option>
                        <option value="2">Blanco</option>
                        <option value="3">Morado</option>
                        <option value="4">Dorado</option>
                        <option value="5">Amarillo</option>
                        <option value="6">Gris Espacial</option>
                        <option value="7">Negro</option>
                        <option value="8">Café</option>
                        <option value="9">Tornasol</option>
                    </select>
                    
                  
                </div>
                               
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <label class="input-group-text" for="colores">Marca</label>
                    </div>
                    <select class="custom-select" id="Marca">
                        <option selected>Elije un color...</option>
                        <option value="1">Samsung Electronics</option>
                        <option value="2">LG</option>
                        <option value="3">Huawei</option>
                        <option value="4">Motorola</option>
                        <option value="5">Nokia</option>
                        <option value="6">Alcatel</option>
                        <option value="7">HTC</option>
                        <option value="8">Xiaomi</option>
                        <option value="9">ZTE</option>
                        <option value="7">CAT</option>
                        <option value="8">RAZER</option>
                        <option value="9">ONEPLUS</option>
                        <option value="7">Apple</option>
                        <option value="8">Oppo</option>
                    
                    </select>
                    
                  
                </div>

            </div>
                <input type="submit" value="Enviar" class="btn btn-dark btn-block"/>
                    <input type="reset" value="Limpiar" class="btn btn-outline-dark btn-block"/>
                
    </form>
</body>
</html>
