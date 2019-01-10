<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>LK</title>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css">
    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="css/mdb.min.css" rel="stylesheet">
    <!-- Your custom styles (optional) -->
    <link href="css/style.css" rel="stylesheet">
</head>
<body>
<!-- Start your project here-->
<header>
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top scrolling-navbar navbar-inverse">
        <div class="container">
            <a class="navbar-brand" href="#">AUCTI<i class="fa fa-circle"></i>N</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigationMenu"
                    aria-controls="navigationMenu"
                    aria-expanded="false" aria-label="Toggle Navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="navbar-collapse collapse" id="navigationMenu">
                <ul class="navbar-nav mr-auto smooth-scroll">
                    <li class="nav-item"><a href="http://localhost:8080"
                                            class="nav-link waves-effect waves-light">Home</a></li>
                    <li class="nav-item"><a href="#" class="nav-link waves-effect waves-light">Lots</a></li>
                    <li class="nav-item"><a href="#" class="nav-link waves-effect waves-light">Service</a></li>
                    <li class="nav-item"><a href="#" class="nav-link waves-effect waves-light">Forum</a></li>
                </ul>
                <form class="form-inline my-2 my-lg-0">
                    <input type="text" class="form-control mr-sm-2" placeholder="Search" aria-label="Search">
                </form>
                <ul class="navbar-nav navbar-right">
                    <li class="nav-item"><a href="#" class="nav-link waves-effect waves-light" data-toggle="modal"
                                            data-target="#modalLoginForm">Log Out</a></li>
                </ul>
            </div>
        </div>
    </nav>
</header>
<br>

<!-- Log Out form-->
<div class="modal fade" id="modalLoginForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header text-center">
                <h4 class="modal-title w-100 font-weight-bold">Log Out</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body mx-3 text-center">
                <h4 class="modal-title w-100 font-weight-bold">Are you sure?</h4>
            </div>
            <div class="modal-footer d-flex justify-content-center">
                <button class="btn btn-deep-orange" data-dismiss="modal">Yes, log out</button>
                <button class="btn blue-grey darken-1 btn-md" data-dismiss="modal">No</button>
            </div>
            </div>
    </div>
</div>
<!-- Log Out form-->
<!-- Footer -->
<footer class="page-footer font-small fixed-bottom">
    <!-- Copyright -->
    <div class="footer-copyright text-center py-3">© 2018 Copyright:
        <a href="#"> auction.com</a>
    </div>
    <!-- Copyright -->
</footer>
<!-- Footer -->
<!-- /Start your project here-->

<!-- SCRIPTS -->
<!-- JQuery -->
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript" src="js/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript" src="js/mdb.min.js"></script>
</body>
</html>
