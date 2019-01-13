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
    <!-- Datatables -->
    <link rel="stylesheet" type="text/css" href="css/datatables.min.css"/>
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

<!-- Tabs-->
<ul class="nav nav-tabs" id="myTab" role="tablist">
    <li class="nav-item">
        <a class="nav-link active" id="myLots-tab" data-toggle="tab" href="#myLots" role="tab" aria-controls="myLots" aria-selected="true">My Lots</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" id="trackedLots-tab" data-toggle="tab" href="#trackedLots" role="tab" aria-controls="trackedLots" aria-selected="false">Tracked Lots</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" id="myGoods-tab" data-toggle="tab" href="#myGoods" role="tab" aria-controls="myGoods" aria-selected="false">My Goods</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" id="messages-tab" data-toggle="tab" href="#messages" role="tab" aria-controls="messages" aria-selected="false">Messages</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Profile</a>
    </li>
</ul>
<div class="tab-content" id="myTabContent">
    <br>
    <div class="tab-pane fade show active" id="myLots" role="tabpanel" aria-labelledby="myLots-tab">Create and manage lots. Add a new lot here!
        <table id="table-lots" class="table table-striped table-bordered" style="width:100%">
            <thead>
            <tr>
                <th>Lot Name</th>
                <th>Lot Description</th>
                <th>Lot start date</th>
                <th>Lot stop date</th>
                <th>Lot start cost</th>
                <th>Lot stop cost</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>Oldest Wood Table</td>
                <td>Best Wood Table ever! Buy it!</td>
                <td>2018.01.01</td>
                <td>2018.12.31</td>
                <td>1000$</td>
                <td>1200$</td>
            </tr>
            <tr>
                <td>Voodoo Doll</td>
                <td>Best Voodoo Doll ever! Buy it!</td>
                <td>2018.01.01</td>
                <td>2018.12.31</td>
                <td>1000$</td>
                <td>1400$</td>
            </tr>
            </tfoot>
        </table>
    </div>
    <div class="tab-pane fade" id="trackedLots" role="tabpanel" aria-labelledby="trackedLots-tab">Keep track of your favorite lots or in which you already participate. If you participate in the auction item automatically falls into this section.</div>
    <div class="tab-pane fade" id="myGoods" role="tabpanel" aria-labelledby="myGoods-tab">Add your goods here
        <table id="table-goods" class="table table-striped table-bordered" style="width:100%">
            <thead>
            <tr>
                <th>Item Name</th>
                <th>Item Description</th>
                <th>Item Picture</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>Wood Table</td>
                <td>Best Wood Table ever! Buy it!</td>
                <td>None</td>
            </tr>
            <tr>
                <td>Doll</td>
                <td>Best Voodoo Doll ever! Buy it!</td>
                <td>None</td>
            </tr>
            </tfoot>
        </table>
    </div>
    <div class="tab-pane fade" id="messages" role="tabpanel" aria-labelledby="messages-tab"></div>
    <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">Check or change your profile data here.
        <form class="text-center border border-light p-5">
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
            <!-- Save changes -->
            <button class="btn btn-info blue-grey darken-1 btn-block" type="submit">Save changes
            </button>
        </form>
    </div>
</div>
<!-- Tabs-->

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
<!-- LK JavaScript -->
<script type="text/javascript" src="js/lk.js"></script>
<!-- Datatables -->
<script type="text/javascript" src="js/datatables.min.js"></script>
</body>
</html>
