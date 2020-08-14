<%-- 
    Document   : store
    Created on : 4 ago. 2020, 19:42:32
    Author     : Light
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Config.*"%>
<%@page import="Obj.*"%>
<%@page import="java.util.*"%>
<%
    List<compra> fechado = new compraBD().Indexcompra();
    double subtotal = 0;
    double total = 0;
   

%>
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
    
    
     <!-- INICIO DEL CONTENIDO REAL DE LA PAGINA -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script>window.jQuery || document.write('<script src="/docs/4.5/assets/js/vendor/jquery.slim.min.js"><\/script>') </script><script src="/docs/4.5/dist/js/bootstrap.bundle.min.js" integrity="sha384-1CmrxMRARb6aLqgBO7yyAxTOQE2AKb9GfXnEo760AUcUmFx3ibVJJAzGytlQcNXd" crossorigin="anonymous"></script>

        <div class="container">

            
            <h5><%out.println("\n ");%></h5>
            <h4> Historial <b>De Compras Recientes</b></h4>
            <table class="table table-bordered table-sm">
                <thead>
                    <tr class="text-center">
                        <th scope="col">Ticket No.</th>
                        <th scope="col">Fecha</th>
                        <th scope="col">Detalle</th>
                        <th scope="col">Total</th>
                    </tr>
                
                <tbody>
                    <%for (compra compras : fechado) {%>                    
                    <tr class="text-center"><th><%=compras.getId_compra()%></th>
                        <td><%=compras.getFecha()%></td>
                        <td>               
                            <table class="table table-sm">
                     <thead class="thead-dark">
                        <tr class="text-center">
                         <th scope="col">Producto</th>
                         <th scope="col"> Precio</th>
                        <th scope="col"> Cantidad</th>
                        <th scope="col"> Subtotal</th> 
                        
                        </tr>
                    <tbody>
                        <%List<compra> detalle = new compraBD().Detallecompra(new compra(compras.getId_compra()));
                        for(compra detail : detalle){%>
                        <tr class="text-center"><th><%=detail.getNombre()%></th>  
                        <td><%=detail.getComprecio()%></td>
                        <td><%=detail.getCantidad()%></td>
                        
                        <td><%=detail.getPrecio()%></td>
                        
                            <%
                            subtotal = subtotal + detail.getPrecio();
                            total =  subtotal;
                                }
                            subtotal = 0; 
                             %>
                        
                    </tbody>
                            </table></td>
                        <td><%=total%></td>
                    </tr>
                    <%}%>

                </tbody>
                
            </table>
            