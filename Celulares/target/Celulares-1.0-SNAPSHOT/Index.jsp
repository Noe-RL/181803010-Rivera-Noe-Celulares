<%-- 
    Document   : Index
    Created on : 4 jun. 2020, 19:36:08
    Author     : Light
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Config.*"%>
<%@page import="Obj.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<%
    List<producto> producto = new productoBD().Indexproductos();
    List<producto> catalogomarca = new productoBD().Indexmarcas();
    List<color> colores = new colorBD().Indexcolores();

%>
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
          <a class="nav-link " href="stock.jsp" tabindex="-1" aria-disabled="true">Opciones</a>
        </li>
      </ul>
      <form class="form-inline mt-2 mt-md-0">
       
      </form>
    </div>
  </nav>
</header>

        <!-- INICIO DEL CONTENIDO REAL DE LA PAGINA -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script>window.jQuery || document.write('<script src="/docs/4.5/assets/js/vendor/jquery.slim.min.js"><\/script>') </script><script src="/docs/4.5/dist/js/bootstrap.bundle.min.js" integrity="sha384-1CmrxMRARb6aLqgBO7yyAxTOQE2AKb9GfXnEo760AUcUmFx3ibVJJAzGytlQcNXd" crossorigin="anonymous"></script>

        <div class="container">


            <h4> </h4>
            <h4> Nuestros <b>Productos</b></h4>
            <table class="table table-striped table-sm">
                <thead >
                    <tr   >
                        <td width="100px" colspan ="1" ><a class ="btn btn-secondary btn-block" href="editfront.jsp">Registrar</a></td>
                    </tr>
                    <tr class="text-center">
                        <th scope="col">No.</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">Modelo</th>
                        <th scope="col">Color</th>
                        <th scope="col">Marca</th>
                        <th scope="col">Precio</th>
                        <th scope="col">Opciones</th>
                    </tr>
                </thead>
                <tbody>
                    <%for (producto productos : producto) {%>
                    <tr class="text-center"><th><%=productos.getId_celular()%></th>
                        <td><%=productos.getNombre()%></td>
                        <td><%=productos.getModelo()%></td>
                        <td><%=productos.getColor()%></td>
                        <td><%=productos.getMarca()%></td>
                        <td>$<%=productos.getPrecio()%></td>
                        <td width="100px" class="text-left">
                                
                                    <a class="btn btn-dark active"  href="editfront.jsp?id=<%=productos.getId_celular()%>"><i class="fas fa-edit"></i> </a>
                         
                                    <a class="btn btn-danger"  href="deletefront.jsp?id=<%=productos.getId_celular()%>"><i class="fas fa-trash-alt"></i> </a>
                                

                            </td>


                    </tr>
                    <%}%>
                </tbody>
            </table>
            <!-- MARCAS  -->
            <h4> Nuestras <b>Marcas</b></h4>
            <table class="table table-striped table-sm">
                <thead>
                    <tr>

                        <td width="100px" colspan ="1" ><a class ="btn btn-secondary btn-block" href="registermark.jsp">Registrar</a></td>
                    </tr>
                    <tr class="text-center">
                        <th scope="col">No.</th>
                        <th scope="col">Marca   </th>
                        <th scope="col">Opciones</th>
                    </tr>
                </thead>
                <tbody>
                    <%for (producto marcas : catalogomarca) {%>
                    <tr class="text-center"> <td><%=marcas.getId_marca()%></td>
                        <td><%=marcas.getMarca()%></td>

                        <td  class="text-right">

                            <a class=" btn btn-dark active " href="registermark.jsp?id=<%=marcas.getId_marca()%>"><i class="fas fa-edit"></i> </a></a>


                            <a class="btn btn-danger"  href="deletemark.jsp?id=<%=marcas.getId_marca()%>"><i class="fas fa-trash-alt"></i> </a>

                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
                
                <!-- COLORES  -->
<h4> Colores <b>Disponibles</b></h4>
            <table class="table table-striped table-sm">
                <thead>
                    <tr>

                        <td width="100px" colspan ="1" ><a class ="btn btn-secondary btn-block" href="addcolor.jsp">Registrar</a></td>
                    </tr>
                    <tr class="text-center">
                        <th scope="col">No.</th>
                        <th scope="col">Color  </th>

                        <th scope="col">Opciones</th>
                    </tr>
                </thead>
                <tbody>
                    <%for (color Icolores : colores) {%>
                    <tr class="text-center"> <td><%=Icolores.getId_color()%></td>
                        <td><%=Icolores.getColor()%></td>

                        <td  class="text-right">

                            <a class=" btn btn-dark active " href="addcolor.jsp?id=<%=Icolores.getId_color()%>"><i class="fas fa-edit"></i> </a></a>


                            <a class="btn btn-danger"  href="deletecolor.jsp?id=<%=Icolores.getId_color()%>"><i class="fas fa-trash-alt"></i> </a>

                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
</body>
</html>
