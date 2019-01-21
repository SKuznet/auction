<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js" type="text/javascript"></script>--%>
    <script src="js/jquery.min.js" type="text/javascript"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
</head>

<script>
    var service = 'http://localhost:8080/product';

    var RestGetAll = function () {
        $.ajax({
            type: 'GET',
            url: service + '/all',
            dataType: 'json',
            accept: 'json',
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
    var RestGet = function (id) {
        $.ajax({
            type: 'GET',
            url: service + '/get/' + id,
            dataType: 'json',
            accept: 'json',
            contentType: 'application/json;utf-8',
            async: false,
            success: function (result) {

                $('#response').html(JSON.stringify(result.name))
            },
            error: function (jqXHR, testStatus, errorThrown) {
                $('#response').html(JSON.stringify(jqXHR))
            }
        });
    };
    var RestPOST = function (name, description) {
        var JSOBObject = {
            'name': name,
            'description': description
        };

        $.ajax({
            type: 'POST',
            url: service + '/add',
            contentType: 'application/json;utf-8',
            dataType: 'json',
            accept: 'json',
            data: JSON.stringify(JSOBObject),
            async: false,
            success: function (result) {
                // $('#response').html(JSON.stringify(result))
                $('#response').html(JSON.stringify(result))
            },
            error: function (jqXHR, testStatus, errorThrown) {
                $('#response').html(JSON.stringify(jqXHR))
            }
        });
    };
    var RestDelete = function (id) {
        $.ajax({
            type: 'DELETE',
            url: service + '/delete/' + id,
            dataType: 'json',
            accept: 'json',
            contentType: 'application/json;utf-8',
            async: false,
            success: function (result) {
                // $('#response').html(JSON.stringify(result))
                $('#response').html(JSON.stringify(result))
            },
            error: function (jqXHR, testStatus, errorThrown) {
                $('#response').html(JSON.stringify(jqXHR))
            }
        });
    };
    var RestPUT = function (id, name, description) {
        var JSOBObject = {
            'id': id,
            'name': name,
            'description': description
        };

        $.ajax({
            type: 'PUT',
            url: service + '/update',
            contentType: 'application/json;utf-8',
            dataType: 'json',
            accept: 'json',
            data: JSON.stringify(JSOBObject),
            async: false,
            success: function (result) {
                // $('#response').html(JSON.stringify(result))
                $('#response').html(JSON.stringify(result))
            },
            error: function (jqXHR, testStatus, errorThrown) {
                $('#response').html(JSON.stringify(jqXHR))
            }
        });
    };
</script>
<body>
<h1>Product's info</h1>

<table class="table">
    <tr>
        <th>Request type</th>
        <th>URL</th>
        <th>Value</th>
    </tr>
    <tr>
        <td>Get all products <code><strong>GET</strong></code></td>
        <td>/product/all</td>
        <td>
            <button type="button" onclick="RestGetAll()">try</button>
        </td>
    </tr>
    <tr>
        <td>Get product by ID <code><strong>GET</strong></code></td>
        <td>/product/get/{id}</td>
        <td>
            id: <input id="getProductId" value="">
            <button type="button" onclick="RestGet($('#getProductId').val())">try</button>
        </td>
    </tr>
    <tr>
        <td>Add product <code><strong>POST</strong></code></td>
        <td>/product/add</td>
        <td>
            name: <input id="productName" value="">
            description: <input id="productDescription" value="">
            <button type="button" onclick="RestPOST($('#productName').val(), $('#productDescription').val())">try</button>
        </td>
    </tr>
    <tr>
        <td>Update product <code><strong>PUT</strong></code></td>
        <td>/product/update</td>
        <td>
            id: <input id="productIdForUpdate" value="">
            name: <input id="productNameForUpdate" value="">
            description: <input id="productDescriptionForUpdate" value="">
            <button type="button" onclick="RestPUT($('#productIdForUpdate').val(), $('#productNameForUpdate').val(), $('#productDescriptionForUpdate').val())">try</button>
        </td>
    </tr>
    <tr>
        <td>Delete product by ID <code><strong>GET</strong></code></td>
        <td>/product/delete/{id}</td>
        <td>
            id: <input id="productIdForDelete" value="">
            <button type="button" onclick="RestDelete($('#productIdForDelete').val())">try</button>
        </td>
    </tr>
</table>

<div class="panel panel-default">
    <div class="page-heading">
        <strong>RESPONSE</strong>
    </div>
    <div class="panel-body" id="response"></div>
</div>
</body>
</html>
