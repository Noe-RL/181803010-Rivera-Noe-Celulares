<%-- 
    Document   : stock
    Created on : 3 ago. 2020, 8:28:30
    Author     : Light
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Config.*"%>
<%@page import="Obj.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<%
    

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
          <a class="nav-link " href="stock.jsp" tabindex="-1" aria-disabled="true">Stock</a>
        </li>
      </ul>
      <form class="form-inline mt-2 mt-md-0">
       
      </form>
    </div>
  </nav>
</header>
  
<%
    
    List<almacen> alma = new almacenBD().Index();
   
    
       
     
   
        

        

%>


        <!-- INICIO DEL CONTENIDO REAL DE LA PAGINA -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script>window.jQuery || document.write('<script src="/docs/4.5/assets/js/vendor/jquery.slim.min.js"><\/script>') </script><script src="/docs/4.5/dist/js/bootstrap.bundle.min.js" integrity="sha384-1CmrxMRARb6aLqgBO7yyAxTOQE2AKb9GfXnEo760AUcUmFx3ibVJJAzGytlQcNXd" crossorigin="anonymous"></script>

        <div class="container">

            <form action="pricing.jsp" method="POST">
            <h4> </h4>
            <h4> Editar <b>Stock</b></h4>
            <table class="table table-striped table-sm">
                <thead>
                    <tr class="text-center">
                        <th scope="col">No.</th>
                      
                        <th scope="col">Cantidad</th>
                        
                    </tr>
                
                <tbody>
                    <%for (almacen compras : alma ) {%>
                    <tr class="text-center"><th><%=compras.getId_producto()%></th>
                        
                       
                        <td><%=compras.getCantidad()%></td>
                        <td>
                         
                         
                         
                        </td>
                        



                    </tr>

                    <%}%>

                </tbody>
                
            </table>
                   
                     <%
               
                    
                %>       
                    <input type="submit" value="Continuar" class=" btn btn-success active ">
                    
            </form>
                    
            
                
                               
                          
               


                        
                        
                    

