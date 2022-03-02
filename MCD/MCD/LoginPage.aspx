<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="MCD.LoginPage" %>

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
            margin: 0 0 10px 0;
        }
        .btnSection{
            margin-top:20px;
        }
    </style>
</head>
<body>
    <div class="container ">
        <div id="frame" class="row justify-content-center align-items-center">
            <div id="main">
                <div class="col-12 textArea">
                    <h3 style="text-align: center">帳號登入</h3>
                    <hr />
                </div>
                <div class="row textArea">
                    <label class="col-3">帳號</label>
                    <input type="text" class="form-control col-8" id="ac" />
                </div>
                <div class="row textArea">
                    <label class="col-3">密碼</label>
                    <input type="password" class="form-control col-8" id="pwd" />
                </div>
                <div class="row textArea btnSection justify-content-end">
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
                pwd: $("#pwd").val()
            }
            $.ajax({
                url: "verificationPage",
                type: "post",
                data: info,
                success: function (data) {
                    data = JSON.parse(data);
                    console.log(data);
                    if (data.status) {
                        document.location.href = "Home.aspx"
                    }
                    else {
                        $("#ac").css({ "border-color": "red" });
                        $("#pwd").css({ "border-color": "red" });
                        alert("帳號或密碼輸入錯誤!");
                    }
                }
            })
        }
        else {
            alert("帳號或密碼不得為空!");
        }
    })
    function setSize() {
        $("#frame").height(height);
        $("#main").width(width / 3);
        $("#main").height(height / 3);
        $(".textArea").width((width / 3) - 10);
    }
    function checkVal() {
        var result = true;
        if ($("#ac").val() == "") {
            $("#ac").css({ "border-color": "red" });
            result = false;
        }
        else {
            $("#ac").css({ "border-color": "#ced4da" });
        }
        if ($("#pwd").val() == "") {
            $("#pwd").css({ "border-color": "red" });
            result = false;
        }
        else {
            $("#pwd").css({ "border-color": "#ced4da" });
        }
        return result;
    }
</script>
</html>