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

    List<todo> compra = new almacenBD().IndexTodo();
    double subtotal = 0;
    double total = 0;
    almacenBD prueba = new almacenBD();
    compraBD comprar = new compraBD();
    java.sql.Date date = new java.sql.Date(Calendar.getInstance().getTime().getTime());
    
    String Datetostring = "" + date;
    comprar.AddNew(new compra(Datetostring));
    
    int id =comprar.getId();

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
        <script>window.jQuery || document.write('<script src="/docs/4.5/assets/js/vendor/jquery.slim.min.js"><\/script>')</script><script src="/docs/4.5/dist/js/bootstrap.bundle.min.js" integrity="sha384-1CmrxMRARb6aLqgBO7yyAxTOQE2AKb9GfXnEo760AUcUmFx3ibVJJAzGytlQcNXd" crossorigin="anonymous"></script>

        <div class="container">

            <form action="sell.jsp" method="GET">
                <h4> </h4>
                <h4> Resumen <b>De Compra</b></h4>
                <table class="table table-striped table-sm">
                    <thead>
                        <tr class="text-center">
                            <th scope="col">No.</th>
                            <th scope="col">Nombre</th>
                            <th scope="col">Modelo</th>
                            <th scope="col">Color</th>
                            <th scope="col">Marca</th>
                            <th scope="col">Precio</th>
                            <th scope="col">Cantidad</th>

                        </tr>

                    <tbody>
                        <%for (todo compras : compra) {
                                String productos = "" + compras.getId_producto();

                                if (request.getParameter(productos).contentEquals("") || Integer.parseInt(request.getParameter(productos)) == 0) {

                                } else {
                                    total = total + Integer.parseInt(request.getParameter(productos)) * compras.getPrecio();
                                    subtotal = compras.getPrecio() * Integer.parseInt(request.getParameter(productos));
                                    boolean flag = comprar.Buy(new compra(id, compras.getId_producto(), Integer.parseInt(request.getParameter(productos)), subtotal));
                                    if(flag = true){
                                        int decrease = compras.getCantidad() - Integer.parseInt(request.getParameter(productos));
                                        comprar.Buy2(new compra(compras.getId_producto(), decrease));
                                    }
                                
                        %>

                        <tr class="text-center"><th><%=compras.getId_producto()%></th>
                    <input type="hidden" name="id<%=compras.getId_producto()%>" value="<%=compras.getId_producto()%>">

                    <td><%=compras.getNombre()%></td>
                    <td><%=compras.getModelo()%></td>
                    <td><%=compras.getColor()%></td>
                    <td><%=compras.getMarca()%></td>
                    <td>$<%=compras.getPrecio()%></td>
                    <input type="hidden" name="price<%=compras.getId_producto()%>" value="<%=compras.getPrecio()%>">
                    <td><%=Integer.parseInt(request.getParameter(productos))%></td>
                    <input type="hidden" name="cant<%=compras.getId_producto()%>" value="<%=Integer.parseInt(request.getParameter(productos))%>">





                    </tr>

                    <%}
                        }%>

                    </tbody>

                </table>

                <%
out.println(date);

                %>       
                <div class=" container text-right">
                    Total de venta:$<%=total%> 
                    
                </div>
                <div class="progress">
                    <div class="progress-bar progress-bar-striped bg-success progress-bar-animated" role="progressbar" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100" style="width: 75%"></div>

                </div>          
                <div class="text-right">
                    <input type="submit"  value="Continuar" class=" btn btn-success active ">
                </div>
            </form>
