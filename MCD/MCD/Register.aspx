<%@Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="MCD._Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script src="jquery-3.4.1.js"></script>
    <script src="Scripts/umd/popper.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="fontawesome/css/all.min.css" rel="stylesheet" />
    <title>註冊頁面</title>
    <style>
        #main {
            border-radius: 2%;
            background: #000;
            color: #fff;
            padding: 5px 5px 5px 0;
        }

        .textArea {
            margin: 0 0 5px 0;
        }
    </style>
</head>
<body>
    <div class="container ">
        <div id="frame" class="row justify-content-center align-items-center">
            <div id="main">
                <div class="col-12 textArea">
                    <h3 style="text-align: center">註冊帳號</h3>
                </div>
                <div class="row textArea">
                    <label class="col-4">電子郵件</label>
                    <input type="text" class="form-control col-8" id="ac" />
                </div>
                <div class="row textArea">
                    <label class="col-4">密碼</label>
                    <input type="password" class="form-control col-8" id="pwd" />
                </div>
                <div class="row textArea">
                    <label class="col-4">重新輸入密碼</label>
                    <input type="password" class="form-control col-8" id="pwd2" />
                </div>
                <div class="row textArea">
                    <label class="col-4">姓名</label>
                    <input type="text" class="form-control col-8" id="name" />
                </div>
                <div class="row textArea">
                    <label class="col-4">身分證字號</label>
                    <input type="text" class="form-control col-8" id="ID" />
                </div>
                <div class="row textArea">
                    <label class="col-4">電話號碼</label>
                    <input type="text" class="form-control col-8" id="num" />
                </div>
                <div class="row textArea">
                    <label class="col-4">性別</label>
                    <div class="col-4 gen">
                        <input type="radio" name="gender" id="male" value="male" />男
                    </div>
                    <div class="col-4 gen">
                        <input type="radio" name="gender" id="female" value="female" />女
                    </div>
                </div>
                <div class="row textArea justify-content-end">
                    <button type="button" id="send" class="btn btn-outline-light">送出</button>
                </div>
            </div>
        </div>
    </div>
</body>
<script>
    var width = $(this).width();
    var height = $(this).height();
    $(this).resize(function () {
        width = $(this).width();
        height = $(this).height();
    })
    $(this).ready(function () {
        setSize();
    })
    $("#send").click(function () {
        if (checkVal()) {
            var info = {
                ac: $("#ac").val(),
                pwd: $("#pwd").val(),
                name: $("#name").val(),
                ID: $("#ID").val(),
                num: $("#num").val(),
                gen: $("[name=gender]:checked").val()
            }
            $.ajax({
                url: "insertPage",
                type: "post",
                data: info,
                success: function (data) {
                    data = JSON.parse(data);
                    console.log(data);
                    if (data.status) {
                        alert("註冊成功!");
                    }
                    else {
                        alert("資料已被使用!");
                        if (!data.ac) {
                            $("#ac").css({ "border-color": "red" });
                        }
                        if (!data.pwd) {
                            $("#pwd").css({ "border-color": "red" });
                            $("#pwd2").css({ "border-color": "red" });
                        }
                        if (!data.num) {
                            $("#num").css({ "border-color": "red" });
                        }
                        if (!data.ID) {
                            $("#ID").css({ "border-color": "red" });
                        }
                    }
                }
            })
        }
        else {
            alert("資料輸入有誤!")
        }
    })
    function setSize() {
        $("#frame").height(height);
        $("#main").width(width / 2.5);
        $(".textArea").width((width / 2.5) - 10);
    }
    function checkVal() {
        var result = true;
        if ($("#ac").val().indexOf("@") == -1 || $("#ac").val().indexOf(".") == -1) {
            $("#ac").css({ "border-color": "red" });
            result = false;
        }
        else {
            $("#ac").css({ "border-color": "#ced4da" });
        }
        if ($("#pwd").val().length < 8) {
            $("#pwd").css({ "border-color": "red" });
            $("#pwd2").css({ "border-color": "red" });
            result = false;
        }
        else {
            $("#pwd").css({ "border-color": "#ced4da" });
            $("#pwd2").css({ "border-color": "#ced4da" });
        }
        if ($("#pwd2").val() != $("#pwd").val() || $("#pwd").val() == "" ) {
            $("#pwd2").css({ "border-color": "red" });
            result = false;
        }
        else {
            $("#pwd2").css({ "border-color": "#ced4da" });
        }
        if ($("#name").val() == "") {
            $("#name").css({ "border-color": "red" });
            result = false;
        }
        else {
            $("#name").css({ "border-color": "#ced4da" });
        }
        if ($("#ID").val().length != 10) {
            $("#ID").css({ "border-color": "red" });
            result = false;
        }
        else {
            $("#ID").css({ "border-color": "#ced4da" });
        }
        if ($("#num").val().length != 10) {
            $("#num").css({ "border-color": "red" });
            result = false;
        }
        else {
            $("#num").css({ "border-color": "#ced4da" });
        }
        if ($("[name=gender]:checked").val()) {
            $(".gen").css({ "color": "#fff" });
        }
        else {
            $(".gen").css({ "color": "red" });
            result = false;
        }
        return result;
    }
</script>
</html>