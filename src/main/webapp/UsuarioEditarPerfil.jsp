<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">

  <head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Perfil / Incidencias PUCP</title>
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
        <div class="contact-info d-flex align-items-center">
        </div>
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
            <li><a class="nav-link  " href="Usuario_Inicio.html">Inicio</a></li>
            <li><a class="nav-link scrollto active" href="Usuario_Perfil.html">Perfil</a></li>
            <li><a class="nav-link scrollto" href="Usuario_MisIncidencias.html">Mis Incidencias</a></li>
            <li><a class="nav-link scrollto" href="Usuario_RegistrarIncidencia.html">Registrar Incidencia</a></li>
            <li><a class="nav-link scrollto" href="home.html">Cerrar sesión</a></li>
          </ul>

          <i class="bi bi-list mobile-nav-toggle"></i>
        </nav><!-- .navbar -->

      </div>
    </header><!-- End Header -->

    <main id="main" data-aos="fade-up">

      <section class="section profile">
        <div class="container">
          <div class="container-fluid">
            <div class="col-xl px-4 mt-4">

              <div class="row">
                <div class="col-xl-4">
                  <div class="card mb-4 mb-xl-0">
                    <div class="card-body profile-card pt-3 d-flex flex-column align-items-center">

                      <img src="assets/img/perfiles/perfil1.svg" width=70% alt="Profile" class="rounded-circle">
                      <h2>José Bustamante</h2>
                      <h5>Usuario PUCP</h5>

                    </div>
                  </div>
                </div>

                <div class="col-xl-8">
                  <div class="card mb-4">
                    <div class="card-body pt-3">
                      <!-- Bordered Tabs -->
                      <ul class="nav nav-tabs nav-tabs-bordered">

                        <li class="nav-item">
                          <button class="nav-link active" data-bs-toggle="tab" data-bs-target="#profile-overview">Detalles</button>
                        </li>

                        <li class="nav-item">
                          <button class="nav-link" data-bs-toggle="tab" data-bs-target="#profile-edit">Editar Perfil</button>
                        </li>

                        <li class="nav-item">
                          <button class="nav-link" data-bs-toggle="tab" data-bs-target="#profile-change-password">Cambiar contraseña</button>
                        </li>

                      </ul>
                      <div class="tab-content pt-2">

                        <div class="tab-pane fade show active profile-overview" id="profile-overview">

                          <h5 class="card-title">Detalles del Perfil</h5>

                          <div class="row">
                            <div class="col-lg-3 col-md-4 label ">Nombre completo</div>
                            <div class="col-lg-9 col-md-8">José Manuel Bustamante Richelli</div>
                          </div>

                          <div class="row">
                            <div class="col-lg-3 col-md-4 label ">Cargo</div>
                            <div class="col-lg-9 col-md-8">Usuario PUCP</div>
                          </div>

                          <div class="row">
                            <div class="col-lg-3 col-md-4 label">Edad</div>
                            <div class="col-lg-9 col-md-8">22 años</div>
                          </div>


                          <div class="row">
                            <div class="col-lg-3 col-md-4 label">Pais</div>
                            <div class="col-lg-9 col-md-8">Perú</div>
                          </div>

                          <div class="row">
                            <div class="col-lg-3 col-md-4 label">Dirección</div>
                            <div class="col-lg-9 col-md-8">Av Las Nuevas Lomas, Lima</div>
                          </div>

                          <div class="row">
                            <div class="col-lg-3 col-md-4 label">Telefono</div>
                            <div class="col-lg-9 col-md-8">986-126-855</div>
                          </div>

                          <div class="row">
                            <div class="col-lg-3 col-md-4 label">Correo</div>
                            <div class="col-lg-9 col-md-8">ajulioflores@pucp.edu.pe</div>
                          </div>

                        </div>

                        <div class="tab-pane fade profile-edit pt-3" id="profile-edit">

                          <!-- Profile Edit Form -->
                          <form>
                            <div class="row mb-3">
                              <label for="profileImage" class="col-md-4 col-lg-3 col-form-label">Imagen de Perfil</label>
                              <div class="col-md-8 col-lg-9">
                                <img src="assets/img/perfiles/perfil1.svg" height="150" width="150"  alt="Profile">
                                <div class="pt-2">
                                  <a href="#" class="btn btn-primary btn-sm" title="Upload new profile image"><i class="bi bi-upload"></i></a>
                                  <a href="#" class="btn btn-danger btn-sm" title="Remove my profile image"><i class="bi bi-trash"></i></a>
                                </div>
                              </div>
                            </div>

                            <div class="row mb-3">
                              <label for="fullName" class="col-md-4 col-lg-3 col-form-label">Nombre Completo</label>
                              <div class="col-md-8 col-lg-9">
                                <input name="fullName" type="text" class="form-control" id="fullName" value="Julio Manuel Flores Richelli" disabled>
                              </div>
                            </div>


                            <div class="row mb-3">
                              <label for="Email" class="col-md-4 col-lg-3 col-form-label">Correo</label>
                              <div class="col-md-8 col-lg-9">
                                <input name="email" type="email" class="form-control" id="Email" value="ajulioflores@pucp.edu.pe" disabled>
                              </div>
                            </div>


                            <div class="row mb-3">
                              <label for="Country" class="col-md-4 col-lg-3 col-form-label">Pais</label>
                              <div class="col-md-8 col-lg-9">
                                <input name="country" type="text" class="form-control" id="Country" value="Perú">
                              </div>
                            </div>

                            <div class="row mb-3">
                              <label for="Address" class="col-md-4 col-lg-3 col-form-label">Direcion</label>
                              <div class="col-md-8 col-lg-9">
                                <input name="address" type="text" class="form-control" id="Address" value="Av Las Nuevas Lomas, Lima">
                              </div>
                            </div>

                            <div class="row mb-3">
                              <label for="Phone" class="col-md-4 col-lg-3 col-form-label">Telefono</label>
                              <div class="col-md-8 col-lg-9">
                                <input name="phone" type="text" class="form-control" id="Phone" value="986-126-855">
                              </div>
                            </div>



                            <div class="text-center">
                              <button href= "Admin_perfil.html" type="submit" class="btn btn-primary">Guardar</button>
                            </div>
                          </form><!-- End Profile Edit Form -->

                        </div>

                        <div class="tab-pane fade pt-3" id="profile-settings">

                          <!-- Settings Form -->
                          <form>

                            <div class="row mb-3">
                              <label for="fullName" class="col-md-4 col-lg-3 col-form-label"> Permitir Notificaciones</label>
                              <div class="col-md-8 col-lg-9">
                                <div class="form-check">
                                  <input class="form-check-input" type="checkbox" id="changesMade" checked>
                                  <label class="form-check-label" for="changesMade">
                                    Incidencias urgentes
                                  </label>
                                </div>
                                <div class="form-check">
                                  <input class="form-check-input" type="checkbox" id="newProducts" checked>
                                  <label class="form-check-label" for="newProducts">
                                    Incidencia atendida
                                  </label>
                                </div>
                                <div class="form-check">
                                  <input class="form-check-input" type="checkbox" id="proOffers">
                                  <label class="form-check-label" for="proOffers">
                                    Reclamo de incidencias
                                  </label>
                                </div>
                                <div class="form-check">
                                  <input class="form-check-input" type="checkbox" id="securityNotify" checked disabled>
                                  <label class="form-check-label" for="securityNotify">
                                    Cada nueva incidencia
                                  </label>
                                </div>
                              </div>
                            </div>

                            <div class="text-center">
                              <button type="submit" class="btn btn-primary">Guardar</button>
                            </div>
                          </form><!-- End settings Form -->

                        </div>

                        <div class="tab-pane fade pt-3" id="profile-change-password">
                          <!-- Change Password Form -->
                          <form>

                            <div class="row mb-3">
                              <label for="currentPassword" class="col-md-4 col-lg-3 col-form-label">Contraseña actual</label>
                              <div class="col-md-8 col-lg-9">
                                <input name="password" type="password" class="form-control" id="currentPassword">
                              </div>
                            </div>

                            <div class="row mb-3">
                              <label for="newPassword" class="col-md-4 col-lg-3 col-form-label">Nueva contraseña</label>
                              <div class="col-md-8 col-lg-9">
                                <input name="newpassword" type="password" class="form-control" id="newPassword">
                              </div>
                            </div>

                            <div class="row mb-3">
                              <label for="renewPassword" class="col-md-4 col-lg-3 col-form-label">Confirmar nueva contraseña</label>
                              <div class="col-md-8 col-lg-9">
                                <input name="renewpassword" type="password" class="form-control" id="renewPassword">
                              </div>
                            </div>

                            <div class="text-center">
                              <button type="submit" class="btn btn-primary">Cambiar contraseña</button>
                            </div>
                          </form><!-- End Change Password Form -->

                        </div>

                      </div><!-- End Bordered Tabs -->

                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="col-xl-8">



            </div>
          </div>
        </div>
      </section>

    </main><!-- End #main -->
    <!-- ======= Footer ======= -->


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