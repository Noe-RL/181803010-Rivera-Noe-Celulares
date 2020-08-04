<%-- 
    Document   : registerfront
    Created on : 5 jul. 2020, 20:31:18
    Author     : Light
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Obj.*"%>
<%@page import="Config.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<%
    int id;
    int idmarca;
    int cantidad;
    String name = "";
    int model ;
    int color;
    int idmark;
    double price;
    productoBD producto = new productoBD();
    almacenBD cant = new almacenBD();
    // List<marca> marcas = new marcaBD().Indexmarcas();
      List<producto> marcas = new productoBD().Indexmarcas();
      List<color> colores = new colorBD().Indexcolores();

    if (request.getParameter("id") != null) {
        id = Integer.parseInt(request.getParameter("id"));
        producto query  = new producto();
        almacen canti = new almacen();
        query=producto.find(new producto (id));
        canti = cant.find(new almacen(id));
        
        cantidad=canti.getCantidad();
        
        
        name = query.getNombre();
        model = query.getModelo();
        idmarca = query.getId_marca();
        color = query.getId_color();
        price=query.getPrecio();
        
       
        
        } else {
        id = 0;
        model = 0;
        color = 0;
        idmarca =0;
        cantidad=0;
        price= 0.00;

    }
        %>
<html><head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link rel="stylesheet" href="https://getbootstrap.com/docs/4.5/examples/floating-labels/floating-labels.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>NetNavi - Inicio</title>
          <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script>

    });
  </script>
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
        
      </form>
    </div>
  </nav>
    </header>
    
    <% if(request.getParameter("id")!=null){%>
                <form class="form-signin" action="onedit.jsp" method="POST">
                   <%}else{%>
                   <form class="form-signin" action="oninsert.jsp" method="POST"><%}%>


        <body>
            <div class="form-label-group text-center-mb-4">
                <div class="text-center mb-4">
                    <img class="mb-4 " src="https://icons.iconarchive.com/icons/paomedia/small-n-flat/1024/device-mobile-phone-icon.png" alt="" width="150">

                </div>
                       <%if(request.getParameter("id")!=null){%>
                    <input type="hidden" name="id_celular" value="<%=id%>">
                    <%}%>
              Nombre
              
                <div><input type="text" name="Nombre" value="<%=name%>" id="inputname" class="form-control" placeholder="Nombre" required autofocus/> </div>

                <div>Modelo
                   <input type="text" name="Modelo" value="<%=model%>" id="inputname" class="form-control" placeholder="Modelo" min="0" required autofocus/>
                </div>
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <label class="input-group-text" for="Colores">Color</label>
                    </div>
                   <select name="Colores" class="custom-select" id="Colores">
                        <option selected>Elige una color...</option>
                        <%for (color colors : colores) {
                            if(colors.getId_color() ==  color  ) {%>
                        <option value="<%=colors.getId_color()%>" selected ><%=colors.getColor()%></option>    
                        <%
                        } else {%>
                        <option value="<%=colors.getId_color()%>"><%=colors.getColor()%></option> 
                        <%}
                        
}%>
                    </select>
                    
                  
                </div>
                               
                <div class="input-group mb-3">
                    <div class="input-group-prepend">
                        <label class="input-group-text" for="Marca">Marca</label>
                    </div>
                    <select name="Marca" class="custom-select" id="Marca">
                        <option selected>Elige una marca...</option>
                        <%for (producto marks : marcas) {
                            if(marks.getId_marca() ==  idmarca  ) {%>
                        <option value="<%=marks.getId_marca()%>" selected ><%=marks.getMarca()%></option>    
                        <%
                        } else {%>
                        <option value="<%=marks.getId_marca()%>"><%=marks.getMarca()%></option> 
                        <%}
                        
}%>
                    </select>
                    
                  
                </div>
                <div>Precio
                    <input type="number" step="000.001" name="precio" value="<%=price%>" id="price" class="form-control" placeholder="Precio" min="000.000" required autofocus/>
                </div>
                <div>Cantidad
                    <input type="number"  name="cantidad" value="<%=cantidad%>" id="cantidad" class="form-control"  min="0" required autofocus/>
                </div>
            </div>
                <input type="submit" value="Enviar" class="btn btn-dark btn-block"/>
                    <input type="reset" value="Limpiar" class="btn btn-outline-dark btn-block"/>
                
    </form>
</body>
</html>
