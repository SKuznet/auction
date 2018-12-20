<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration page</title>
    <script src="js/jquery.min.js" type="text/javascript"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
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
<h1>Registration form</h1>

<table class="registration_form">
    <tr>
        Fill in the fields below. All fields are required!
    </tr>
    <tr>
    <tr>
        <td>
            Surname: <input id="userSurname" value="">
        </td>
    </tr>
    <tr>
    <tr>
        <td>
            Name: <input id="userName" value="">
        </td>
    </tr>
    <tr>
        <td>
            Middle Name: <input id="userMiddleName" value="">
        </td>
    </tr>

    <tr>
        <td>
            Nickname: <input id="userNickname" value="">
        </td>
    </tr>
    <tr>
    <tr>
        <td>
            Email: <input id="userEmail" value="">
        </td>
    </tr>
    <tr>
    <tr>
        <td>
            Password: <input id="userPassword" value="">
        </td>
    </tr>
    <tr>
        <td>
            <button type="button" onclick="RestPOST($('#userName').val(),$('#userEmail').val(),
             $('#userSurname').val(),$('#userMiddleName').val(),$('#userNickname').val(),
             $('#userPassword').val())">Send</button>
        </td>
    </tr>
</table>
<div class="panel panel-default">
    <div class="page-heading">
        <strong>RESPONSE</strong>
    </div>
    <div class="panel-body" id="response">
    </div>
</div>
</body>
</html>
