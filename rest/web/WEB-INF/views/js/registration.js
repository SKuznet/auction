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