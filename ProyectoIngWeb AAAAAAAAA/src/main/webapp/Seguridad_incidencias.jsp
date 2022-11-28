<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:useBean id="incidencia" scope="request" type="com.example.proyectoingweb.servlets.model.beans.Incidencias"/>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta content="width=device-width, initial-scale=1.0" name="viewport">

        <title>Seguridad / Incidencia </title>

        <!-- Favicons -->
        <link href="assets/img/telepucp.png" rel="icon">
        <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Roboto:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
              rel="stylesheet">

        <!-- Vendor CSS Files -->
        <link href="assets/vendor/aos/aos.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
        <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
        <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
        <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
        <script src="https://kit.fontawesome.com/600382161a.js" crossorigin="anonymous"></script>

        <!-- Template Main CSS File -->
        <link href="assets/css/style_seguridad.css" rel="stylesheet">

    </head>

    <body>

        <!-- ======= Top Bar ======= -->
        <section id="topbar" class="d-flex align-items-center">
            <div class="container d-flex justify-content-center justify-content-md-between">
                <div class="contact-info d-flex align-items-center">
                </div>
            </div>
        </section>

        <!-- ======= Header ======= -->
        <header id="header" class="d-flex align-items-center">
            <div class="container d-flex align-items-center justify-content-between">

                <div class="d-md-flex align-items-center">
                    <div>
                        <h1 class="name" style="margin-top: 25px">Julio Flores
                            <br><h6>Seguridad</h6></br>
                        </h1>
                    </div>
                </div>

                <nav id="navbar" class="navbar">

                    <ul>
                        <li>
                            <div class="container-fluid">
                                <form class="d-flex input-group w-auto">
                                    <input
                                            type="search"
                                            class="form-control rounded"
                                            placeholder="Buscar Incidencia"
                                            aria-label="Search"
                                            aria-describedby="search-addon"
                                    />
                                    <span class="input-group-text border-0" id="search-addon">
        <i class="fas fa-search"></i>
      </span>
                                </form>
                            </div>
                        </li>
                        <li><a class="nav-link  "
                               href="<%=request.getContextPath()%>/Seguridad?action=inicioSeguridad">Inicio</a>
                        </li>
                        <li><a class="nav-link scrollto"
                               href="<%=request.getContextPath()%>/Seguridad?action=perfil">Perfil</a></li>
                        <li><a class="nav-link scrollto"
                               href="<%=request.getContextPath()%>/Seguridad?action=cerrarSesion">Cerrar
                            sesión</a></li>
                    </ul>

                    <i class="bi bi-list mobile-nav-toggle"></i>
                </nav><!-- .navbar -->

            </div>
        </header><!-- End Header -->

        <main id="main" data-aos="fade-up">


            <!-- ======= Portfolio Details Section ======= -->
            <section id="portfolio-details" class="portfolio-details">
                <div class="container">
                    <div class="container-fluid">

                        <!-- Page Heading -->
                        <div class="d-sm-flex align-items-center justify-content-between mb-4">
                            <h1 class="h3 mb-0 text-gray-800">Incidencias PUCP</h1>
                        </div>

                        <div class="container">

                            <div class="col-lg-12 mx-auto">
                                <!-- Dropdown Card Example -->
                                <div class="card shadow mb-4 ">
                                    <!-- Card Header - Dropdown -->
                                    <div class="card-header p-5 d-flex flex-row align-items-center justify-content-between">
                                        <img class="d-lg-block"
                                             src="assets/img/fotosPerfil/<%=incidencia.getUsuario().getFotoPerfil()%>"
                                             width="10%"/>
                                        <br>
                                        <div></div>
                                        <h4 class="m-0 font-weight-bold text-primary"
                                            style="width:75%"><%=incidencia.getNombre()%>
                                            <div style="color:darkgray;display: flex;flex-direction: column">
                                                <h6><%=(incidencia.getAnonimo() == 0) ? (incidencia.getUsuario().getNombres() + " " + incidencia.getUsuario().getApellidos()) : "Anónimo"%>
                                                </h6>
                                                <h6>Registrado hoy</h6></div>
                                            <div><a href="#" class="btn btn-warning btn-circle">
                                                <i class="fas fa-exclamation-triangle"><%=incidencia.getDestacado()%>
                                                </i>
                                            </a></div>
                                        </h4>
                                        <button type="button"
                                                class="btn btn-primary btn-sm"><%=incidencia.getEstadoIncidencia()%>
                                        </button>


                                    </div>


                                    <!-- Card Body -->

                                    <div class="card-body">
                                        <div><h4>Descripción</h4></div>
                                        <%=incidencia.getDescripcion()%>
                                        <div><br><h4>Zona PUCP:</h4></div>
                                        <%=incidencia.getZonaPucp().getNombreZona()%>
                                        <div><br>
                                            <h4>Ubicación
                                                <div id="map-container-google-2" class="z-depth-1-half map-container"
                                                     style="height: 150px">
                                                    <iframe src="https://maps.google.com/maps?q=chicago&t=&z=13&ie=UTF8&iwloc=&output=embed"
                                                            frameborder="0"
                                                            style="border:0" allowfullscreen></iframe>
                                                </div>
                                            </h4>
                                        </div>

                                        <div><br><h4>Fotos</h4></div>
                                        <div class="col-12">
                                            <br>
                                            <div class="row">
                                                <div class="col-auto">
                                                    <img src="assets/img/facultad_matematicas_pucp.jpg" alt="logo"
                                                         class="img-fluid d-block mx-auto"
                                                         style="height: 200px;border-radius: 1em">
                                                </div>
                                                <div class="col-auto">
                                                    <img src="assets/img/facultad_derecho_pucp.jpg" alt="logo"
                                                         class="img-fluid d-block mx-auto"
                                                         style="height: 200px;border-radius: 1em"></div>
                                            </div>
                                            <br>


                                        </div>

                                        <div class="row mb-3">
                                            <label class="col-sm-2 col-form-label"><h5>Tipo de incidencia </h5></label>
                                            <div class="col-sm-2">
                                                <input type="text" class="form-control"
                                                       value="<%=incidencia.getTipo()%>" disabled>
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label class="col-sm-2 col-form-label"><h5>Nivel de urgencia </h5></label>
                                            <div class="col-sm-2">
                                                <input type="text" class="form-control"
                                                       value="<%=incidencia.getUrgencia()%>" disabled>
                                            </div>
                                        </div>

                                        <div class="row mb-3">
                                            <label class="col-sm-2 col-form-label"><h5>Estado </h5></label>
                                            <div class="col-sm-2">
                                                <select class="form-select" aria-label="Default select example">
                                                    <option selected>Registrado</option>
                                                    <option value="1">Atendido</option>
                                                    <option value="2">En proceso</option>
                                                </select>
                                            </div>
                                        </div>

                                        <div>
                                            <label class=" col-form-label"><h4>Comentario de Seguridad </h4></label>
                                            <div class="col-sm-10">
                                                <textarea class="form-control" style="height: 100px"></textarea>
                                            </div>
                                        </div>

                                        <div class="row">
                                            <div class="col-sm-1">
                                                <br>
                                                <a class="nav-link  "
                                                   href="<%=request.getContextPath()%>/Seguridad?action=inicioSeguridad">
                                                    <button type="button" class="btn btn-primary btn-sm">Aceptar
                                                    </button>
                                                </a>

                                            </div>

                                            <div class="col-sm-1">
                                                <br>
                                                <div class="btn-group">
                                                    <button type="button" class="btn btn-danger">
                                                        <i class="bi bi-filetype-pdf"></i>
                                                    </button>
                                                    <button type="button" class="btn btn-success">
                                                        <i class="bi bi-filetype-xls"></i>
                                                    </button>
                                                    <button type="button" class="btn btn-primary">
                                                        <i class="bi bi-filetype-txt"></i>
                                                    </button>
                                                </div>
                                            </div>

                                        </div>


                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>


                </div>
            </section><!-- End Portfolio Details Section -->
        </main>

        <div id="preloader"></div>
        <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
                class="bi bi-arrow-up-short"></i></a>

        <!-- Vendor JS Files -->
        <script src="assets/vendor/purecounter/purecounter_vanilla.js"></script>
        <script src="assets/vendor/aos/aos.js"></script>
        <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
        <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
        <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
        <script src="assets/vendor/waypoints/noframework.waypoints.js"></script>
        <script src="assets/vendor/php-email-form/validate.js"></script>

        <!-- Template Main JS File -->
        <script src="assets/js/main.js"></script>

    </body>

</html>
