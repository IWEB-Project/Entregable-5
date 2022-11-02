<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

  <head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Inicio / Incidencias PUCP</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="assets/img/favicon.png" rel="icon">
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
    <link href="assets/css/style_usuario.css" rel="stylesheet">

    <!-- =======================================================
    * Template Name: BizLand - v3.9.0
    * Template URL: https://bootstrapmade.com/bizland-bootstrap-business-template/
    * Author: BootstrapMade.com
    * License: https://bootstrapmade.com/license/
    ======================================================== -->
  </head>

  <body>

    <!-- ======= Top Bar ======= -->
    <section id="topbar" class="d-flex align-items-center">
      <div class="container d-flex justify-content-center justify-content-md-between">
      </div>
    </section>

    <!-- ======= Header ======= -->
    <header id="header" class="d-flex align-items-center">
      <div class="container d-flex align-items-center justify-content-between">

        <div class="d-md-flex align-items-center">
          <div>
            <h1 class="name" style="margin-top: 25px">José Bustamante
              <br><h6>Usuario PUCP</h6></br>
            </h1>
          </div>
        </div>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html" class="logo"><img src="assets/img/logo.png" alt=""></a>-->

        <nav id="navbar" class="navbar">


          <ul>
            <li><div class="container-fluid">
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
            </div></li>
            <li><a class="nav-link" href="<%=request.getContextPath()%>/Inicio?action=inicioUsuario">Inicio</a></li>
            <li><a class="nav-link" href="<%=request.getContextPath()%>/Inicio?action=perfil">Perfil</a></li>
            <li><a class="nav-link" href="<%=request.getContextPath()%>/Inicio?action=misIncidencias">Mis Incidencias</a></li>
            <li><a class="nav-link" href="<%=request.getContextPath()%>/Inicio?action=registrarIncidencia">Registrar Incidencia</a></li>
            <li><a class="nav-link" href="<%=request.getContextPath()%>/Inicio?action=cerrarSesion">Cerrar sesión</a></li>
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


            <div class="row">

              <div class="col-lg-6">

                <!-- Dropdown Card Example -->
                <div class="card shadow mb-4">
                  <!-- Card Header - Dropdown -->
                  <div
                          class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                    <h6 class="m-0 font-weight-bold text-primary"> Incidencia: Robo 1</h6>
                    <a href="#" class="btn btn-warning btn-circle">
                      <i class="bi bi-exclamation-triangle"></i>
                    </a>
                  </div>
                  <!-- Card Body -->
                  <div class="card-body">
                    Dropdown menus can be placed in the card header in order to extend the functionality
                    of a basic card. In this dropdown card example, the Font Awesome vertical ellipsis
                    icon in the card header can be clicked on in order to toggle a dropdown menu.
                    <div class="col-12">
                      <br>
                      <div class="row">
                        <div class="col-auto">
                          <img src="assets/img/facultad_matematicas_pucp.jpg" alt="logo" class="img-fluid d-block mx-auto"
                               style="height: 80px;border-radius: 1em">
                        </div>
                        <div class="col-auto">
                          <img src="assets/img/facultad_derecho_pucp.jpg" alt="logo" class="img-fluid d-block mx-auto"
                               style="height: 80px;border-radius: 1em"></div>
                      </div>

                    </div>
                  </div>
                </div>


              </div>
              <div class="col-lg-6">

                <!-- Dropdown Card Example -->
                <div class="card shadow mb-4">
                  <!-- Card Header - Dropdown -->
                  <div
                          class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                    <h6 class="m-0 font-weight-bold text-primary"> Incidencia: Robo 2</h6>
                    <a href="#" class="btn btn-warning btn-circle">
                      <i class="fas fa-exclamation-triangle"></i>
                    </a>

                  </div>
                  <!-- Card Body -->
                  <div class="card-body">
                    Dropdown menus can be placed in the card header in order to extend the functionality
                    of a basic card. In this dropdown card example, the Font Awesome vertical ellipsis
                    icon in the card header can be clicked on in order to toggle a dropdown menu.
                    <div class="col-12">
                      <br>
                      <div class="row">
                        <div class="col-auto">
                          <img src="assets/img/facultad_matematicas_pucp.jpg" alt="logo" class="img-fluid d-block mx-auto"
                               style="height: 80px;border-radius: 1em">
                        </div>
                        <div class="col-auto">
                          <img src="assets/img/facultad_derecho_pucp.jpg" alt="logo" class="img-fluid d-block mx-auto"
                               style="height: 80px;border-radius: 1em"></div>
                        <div class="col-auto">
                          <img src="assets/img/vista_area_pucp.jpg" alt="logo" class="img-fluid d-block mx-auto"
                               style="height: 80px;border-radius: 1em"></div>
                      </div>

                    </div>
                  </div>
                </div>


              </div>
              <div class="col-lg-6">

                <!-- Dropdown Card Example -->
                <div class="card shadow mb-4">
                  <!-- Card Header - Dropdown -->
                  <div
                          class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                    <h6 class="m-0 font-weight-bold text-primary"> Incidencia: Robo 3</h6>

                    <a href="#" class="btn btn-warning btn-circle">
                      <i class="fas fa-exclamation-triangle"></i>
                    </a>
                  </div>
                  <!-- Card Body -->
                  <div class="card-body">
                    Dropdown menus can be placed in the card header in order to extend the functionality
                    of a basic card. In this dropdown card example, the Font Awesome vertical ellipsis
                    icon in the card header can be clicked on in order to toggle a dropdown menu.
                    <div class="col-12">
                      <br>
                      <div class="row">
                        <div class="row">
                          <div class="col-auto">
                            <img src="assets/img/facultad_matematicas_pucp.jpg" alt="logo"
                                 class="img-fluid d-block mx-auto"
                                 style="height: 80px;border-radius: 1em">
                          </div>
                          <div class="col-auto">
                            <img src="assets/img/facultad_derecho_pucp.jpg" alt="logo"
                                 class="img-fluid d-block mx-auto"
                                 style="height: 80px;border-radius: 1em"></div>
                          <div class="col-auto">
                            <img src="assets/img/vista_area_pucp.jpg" alt="logo"
                                 class="img-fluid d-block mx-auto"
                                 style="height: 80px;border-radius: 1em"></div>
                        </div>

                      </div>

                    </div>
                  </div>
                </div>


              </div>
              <div class="col-lg-6">

                <!-- Dropdown Card Example -->
                <div class="card shadow mb-4">
                  <!-- Card Header - Dropdown -->
                  <div
                          class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                    <h6 class="m-0 font-weight-bold text-primary"> Incidencia: Robo 4</h6>
                    <a href="#" class="btn btn-warning btn-circle">
                      <i class="fas fa-exclamation-triangle"></i>
                    </a>

                  </div>
                  <!-- Card Body -->
                  <div class="card-body">
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Accusamus alias aut culpa
                    deleniti eligendi eos eveniet ex ipsa iure magnam minus natus, nobis optio possimus quam
                    quisquam ut vero voluptate?
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad architecto aut, deserunt
                    eligendi error eum harum impedit ipsa, ipsam iste iusto natus possimus quas, quos
                    suscipit ut veritatis. Aut, doloremque?
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet architecto aspernatur at
                    ducimus, est fugiat fugit magnam magni nam nihil nulla, optio perspiciatis praesentium
                    quia quod reiciendis ut veniam vero?
                  </div>
                </div>


              </div>
              <div class="col-lg-6">

                <!-- Dropdown Card Example -->
                <div class="card shadow mb-4">
                  <!-- Card Header - Dropdown -->
                  <div
                          class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                    <h6 class="m-0 font-weight-bold text-primary"> Incidencia: Robo 5</h6>
                    <a href="#" class="btn btn-warning btn-circle">
                      <i class="bi bi-exclamation-triangle"></i>
                    </a>
                  </div>
                  <!-- Card Body -->
                  <div class="card-body">
                    Dropdown menus can be placed in the card header in order to extend the functionality
                    of a basic card. In this dropdown card example, the Font Awesome vertical ellipsis
                    icon in the card header can be clicked on in order to toggle a dropdown menu.
                    <div class="col-12">
                      <br>
                      <div class="row">
                        <div class="row">
                          <div class="col-auto">
                            <img src="assets/img/facultad_matematicas_pucp.jpg" alt="logo"
                                 class="img-fluid d-block mx-auto"
                                 style="height: 80px;border-radius: 1em">
                          </div>
                          <div class="col-auto">
                            <img src="assets/img/facultad_derecho_pucp.jpg" alt="logo"
                                 class="img-fluid d-block mx-auto"
                                 style="height: 80px;border-radius: 1em"></div>
                          <div class="col-auto">
                            <img src="assets/img/vista_area_pucp.jpg" alt="logo"
                                 class="img-fluid d-block mx-auto"
                                 style="height: 80px;border-radius: 1em"></div>
                        </div>

                      </div>

                    </div>
                  </div>
                </div>


              </div>

              <div class="col-lg-6">

                <!-- Dropdown Card Example -->
                <div class="card shadow mb-4">
                  <!-- Card Header - Dropdown -->
                  <div
                          class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                    <h6 class="m-0 font-weight-bold text-primary"> Incidencia: Explosion</h6>
                    <div class="dropdown no-arrow">

                      <a href="#" class="btn btn-warning btn-circle">
                        <i class="fas fa-exclamation-triangle"></i>
                      </a>
                    </div>
                  </div>
                  <!-- Card Body -->
                  <div class="card-body">
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut culpa cum delectus ea enim
                    exercitationem illum impedit, laborum laudantium modi nemo placeat provident
                    reprehenderit repudiandae saepe, temporibus velit. Et, praesentium.
                    <div class="col-12">
                      <br>
                      <div class="row">
                        <div class="row">
                          <div class="col-auto">
                            <img src="assets/img/facultad_matematicas_pucp.jpg" alt="logo"
                                 class="img-fluid d-block mx-auto"
                                 style="height: 80px;border-radius: 1em">
                          </div>
                          <div class="col-auto">
                            <img src="assets/img/facultad_derecho_pucp.jpg" alt="logo"
                                 class="img-fluid d-block mx-auto"
                                 style="height: 80px;border-radius: 1em"></div>
                          <div class="col-auto">
                            <img src="assets/img/vista_area_pucp.jpg" alt="logo"
                                 class="img-fluid d-block mx-auto"
                                 style="height: 80px;border-radius: 1em"></div>
                        </div>

                      </div>

                    </div>
                  </div>
                </div>



              </div>

            </div>
            <nav aria-label="Page navigation example">
              <ul class="pagination justify-content-center">
                <li class="page-item disabled">
                  <a class="page-link" href="#" tabindex="-1">Previous</a>
                </li>
                <li class="page-item"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">2</a></li>
                <li class="page-item"><a class="page-link" href="#">3</a></li>
                <li class="page-item">
                  <a class="page-link" href="#">Next</a>
                </li>
              </ul>
            </nav>
          </div>


        </div>
      </section><!-- End Portfolio Details Section -->

    </main><!-- End #main -->


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
