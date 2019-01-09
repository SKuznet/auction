<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Home page</title>
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
                                            data-target="#modalLoginForm">Sign in</a></li>
                    <li class="nav-item"><a href="#" class="nav-link waves-effect waves-light" data-toggle="modal"
                                            data-target="#modalRegisterForm">Sign up</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</header>
<br>

<!-- Sign In & Sign Up forms-->
<div class="modal fade" id="modalLoginForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header text-center">
                <h4 class="modal-title w-100 font-weight-bold">Sign in</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body mx-3">
                <div class="md-form mb-5">
                    <i class="fas fa-envelope prefix grey-text"></i>
                    <input type="email" id="defaultForm-email" class="form-control validate">
                    <label data-error="wrong" data-success="right" for="defaultForm-email">Your email</label>
                </div>

                <div class="md-form mb-4">
                    <i class="fas fa-lock prefix grey-text"></i>
                    <input type="password" id="defaultForm-pass" class="form-control validate">
                    <label data-error="wrong" data-success="right" for="defaultForm-pass">Your password</label>
                </div>

            </div>
            <div class="modal-footer d-flex justify-content-center">
                <button class="btn blue-grey darken-1 btn-md">Login</button>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="modalRegisterForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header text-center">
                <h4 class="modal-title w-100 font-weight-bold">Sign up</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body mx-3">
                <div class="md-form mb-5">
                    <i class="fas fa-user prefix grey-text"></i>
                    <input type="text" id="userFirstName" class="form-control validate">
                    <label data-error="wrong" data-success="right" for="userFirstName">Your name</label>
                </div>
                <div class="md-form mb-5">
                    <i class="fas fa-user prefix grey-text"></i>
                    <input type="text" id="userMiddleName" class="form-control validate">
                    <label data-error="wrong" data-success="right" for="userMiddleName">Your middle name</label>
                </div>
                <div class="md-form mb-5">
                    <i class="fas fa-user prefix grey-text"></i>
                    <input type="text" id="userLastName" class="form-control validate">
                    <label data-error="wrong" data-success="right" for="userLastName">Your last name</label>
                </div>
                <div class="md-form mb-5">
                    <i class="fas fa-user prefix grey-text"></i>
                    <input type="text" id="userNickname" class="form-control validate">
                    <label data-error="wrong" data-success="right" for="userNickname">Your nickname</label>
                </div>
                <div class="md-form mb-5">
                    <i class="fas fa-envelope prefix grey-text"></i>
                    <input type="email" id="userEmail" class="form-control validate">
                    <label data-error="wrong" data-success="right" for="userEmail">Your email</label>
                </div>
                <div class="md-form mb-4">
                    <i class="fas fa-lock prefix grey-text"></i>
                    <input type="password" id="userPassword" class="form-control validate">
                    <label data-error="wrong" data-success="right" for="userPassword">Your password</label>
                </div>
            </div>
            <div class="modal-footer d-flex justify-content-center">
                <button class="btn btn-deep-orange" onclick="RestPOST($('#userFirstName').val(),
    $('#userEmail').val(),$('#userLastName').val(),$('#userMiddleName').val(),$('#userNickname').val(),
    $('#userPassword').val())">Sign up</button>
            </div>
        </div>
    </div>
</div>
<!-- Sign In & Sign Up forms-->

<div id="headerwrap">
    <div class="container">
        <div class="col-lg-8 col-lg-offset-2">
        </div>

        <!-- Card deck -->
        <div class="card-deck">
            <!-- Card -->
            <div class="card mb-4">
                <!--Card image-->
                <div class="view overlay">
                    <img class="card-img-top" src="img/card_lots.jpg" alt="Card image cap">
                    <a href="#!">
                        <div class="mask rgba-white-slight"></div>
                    </a>
                </div>

                <!--Card content-->
                <div class="card-body">
                    <!--Title-->
                    <h4 class="card-title">Lots</h4>
                    <!--Text-->
                    <p class="card-text">Place your bets on your favorite products online!</p>
                    <!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
                    <button type="button" class="btn blue-grey darken-1 btn-md">Read more</button>
                </div>
            </div>
            <!-- Card -->

            <!-- Card -->
            <div class="card mb-4">
                <!--Card image-->
                <div class="view overlay">
                    <img class="card-img-top" src="img/card_service.jpg" alt="Card image cap">
                    <a href="#!">
                        <div class="mask rgba-white-slight"></div>
                    </a>
                </div>

                <!--Card content-->
                <div class="card-body">
                    <!--Title-->
                    <h4 class="card-title">Service</h4>
                    <!--Text-->
                    <p class="card-text">Take advantage of our services and work with the owners of goods directly!</p>
                    <!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
                    <button type="button" class="btn blue-grey darken-1 btn-md">Read more</button>
                </div>
            </div>
            <!-- Card -->

            <!-- Card -->
            <div class="card mb-4">
                <!--Card image-->
                <div class="view overlay">
                    <img class="card-img-top" src="img/card_forum.jpg" alt="Card image cap">
                    <a href="#!">
                        <div class="mask rgba-white-slight"></div>
                    </a>
                </div>

                <!--Card content-->
                <div class="card-body">
                    <!--Title-->
                    <h4 class="card-title">Forum</h4>
                    <!--Text-->
                    <p class="card-text">Looking for a special product? Discuss this and other issues on our forum!</p>
                    <!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
                    <button type="button" class="btn blue-grey darken-1 btn-md">Read more</button>
                </div>
            </div>
            <!-- Card -->
        </div>
        <!-- Card deck -->
    </div>
</div>
<br>

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
<!-- Registration -->
<script type="text/javascript" src="js/registration.js"></script>
</body>

</html>
