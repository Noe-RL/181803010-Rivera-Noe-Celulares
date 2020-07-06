<%-- 
    Document   : Startpage
    Created on : 5 jul. 2020, 20:06:35
    Author     : Light
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
        <link rel="stylesheet" href="https://getbootstrap.com/docs/4.5/examples/sign-in/signin.css">
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

        <!-- Begin page content -->
        <main role="main" class="flex-shrink-0">

            <div class="container">
                <h1 class="text-center mt-5">Bienvenido a NetNavi</h1>
                <p class="lead text-center ">Estamos cien por cien interesados en la distribución correcta y segura de dispositivos hasta la puerta de su hogar.</p>
                <p class="text-center" >Consulte nuestro <a href="#">Manual de operaciones</a> Para conocer más acerca de nuestro servicio</p>
            </div>
            <div class="text-right mb-4">
                <img class="mb-4 justify-items-right " src="https://www.netclipart.com/pp/m/71-719388_cell-phones-png.png" >

            </div>
        </main>

        <footer class="footer mt-auto py-3">
            <div class="container">
                <span class="text-muted">NETNavi S.A de C.V | Todos los derechos reservados | Come frutas y verduras</span>
            </div>
        </footer>
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script>window.jQuery || document.write('<script src="/docs/4.5/assets/js/vendor/jquery.slim.min.js"><\/script>')</script><script src="/docs/4.5/dist/js/bootstrap.bundle.min.js" integrity="sha384-1CmrxMRARb6aLqgBO7yyAxTOQE2AKb9GfXnEo760AUcUmFx3ibVJJAzGytlQcNXd" crossorigin="anonymous"></script>

    </body>
</html>
