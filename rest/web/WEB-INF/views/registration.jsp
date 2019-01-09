<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Registration page</title>
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
                    <li class="nav-item"><a href="http://localhost:8080" class="nav-link waves-effect waves-light">Home</a></li>
                    <li class="nav-item"><a href="#" class="nav-link waves-effect waves-light">Lots</a></li>
                    <li class="nav-item"><a href="#" class="nav-link waves-effect waves-light">Service</a></li>
                    <li class="nav-item"><a href="#" class="nav-link waves-effect waves-light">Forum</a></li>
                </ul>
                <form class="form-inline my-2 my-lg-0">
                    <input type="text" class="form-control mr-sm-2" placeholder="Search" aria-label="Search">
                </form>
                <ul class="navbar-nav navbar-right">
                    <li class="nav-item"><a href="#" class="nav-link waves-effect waves-light">Sign in</a></li>
                    <li class="nav-item"><a href="http://localhost:8080/registration"
                                            class="nav-link waves-effect waves-light">Sign up</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</header>
<!-- Default form register -->
<form class="text-center border border-light p-5">
    <p class="h4 mb-4">Sign up</p>

    <!-- First name -->
    <input type="text" id="userFirstName" class="form-control mb-4" placeholder="First name">
    <!-- Middle name -->
    <input type="text" id="userMiddleName" class="form-control mb-4" placeholder="Middle name">
    <!-- Last name -->
    <input type="text" id="userLastName" class="form-control mb-4" placeholder="Last name">
    <!-- Nickname -->
    <input type="text" id="userNickname" class="form-control mb-4" placeholder="Nickname">
    <!-- E-mail -->
    <input type="email" id="userEmail" class="form-control mb-4" placeholder="E-mail">
    <!-- Password -->
    <input type="password" id="userPassword" class="form-control mb-4" placeholder="Password">
    <!-- Sign up button -->
    <button class="btn btn-info blue-grey darken-1 btn-block" type="submit" onclick="RestPOST($('#userFirstName').val(),
    $('#userEmail').val(),$('#userLastName').val(),$('#userMiddleName').val(),$('#userNickname').val(),
    $('#userPassword').val())">Sign in
    </button>
</form>
<!-- Default form register -->

<!-- Footer -->
<footer class="page-footer font-small fixed-bottom">
    <!-- Copyright -->
    <div class="footer-copyright text-center py-3">© 2018 Copyright:
        <a href="#"> auction.com</a>
    </div>
    <!-- Copyright -->
</footer>
<!-- Footer -->

<!-- SCRIPTS -->
<!-- JQuery -->
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript" src="js/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript" src="js/mdb.min.js"></script>
<script type="text/javascript" src="js/registration.js"></script>
</body>
</html>