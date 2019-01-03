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
<script>
    var service = 'http://localhost:8080/registration';

    var RestPOST = function (name, surname, middle_name, nickname, email, password) {
        var JSOBObject = {
            'surname': surname,
            'name': name,
            'middle_name': middle_name,
            'nickname': nickname,
            'email': email,
            'password': password
        };

        $.ajax({
            type: 'POST',
            url: service + '/add',
            dataType: 'json',
            accept: 'json',
            data: JSON.stringify(JSOBObject),
            contentType: 'application/json;utf-8',
            async: false,
            success: function (result) {
                $('#response').html(JSON.stringify(result))
            },
            error: function (jqXHR, testStatus, errorThrown) {
                $('#response').html(JSON.stringify(jqXHR))
            }
        });
    };

</script>
<body>

<!-- Default form register -->
<form class="text-center border border-light p-5">

    <p class="h4 mb-4">Sign up</p>

    <!-- First name -->
    <input type="text" id="userFirstName" class="form-control" placeholder="First name">
    <br>
    <!-- Middle name -->
    <input type="text" id="userMiddleName" class="form-control" placeholder="Middle name">
    <br>
    <!-- Last name -->
    <input type="text" id="userLastName" class="form-control" placeholder="Last name">
    <br>
    <!-- Nickname -->
    <input type="text" id="userNickname" class="form-control mb-4" placeholder="Nickname">
    <!-- E-mail -->
    <input type="email" id="userEmail" class="form-control mb-4" placeholder="E-mail">
    <!-- Password -->
    <input type="password" id="userPassword" class="form-control" placeholder="Password">
    <br>
    <!-- Sign up button -->
    <button class="btn btn-info blue-grey darken-1 btn-block" type="submit" onclick="RestPOST($('#userFirstName').val(),
    $('#userEmail').val(),$('#userLastName').val(),$('#userMiddleName').val(),$('#userNickname').val(),
    $('#userPassword').val())">Sign in
    </button>
</form>
<!-- Default form register -->

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