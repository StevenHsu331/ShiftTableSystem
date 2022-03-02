<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="MCD.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script src="jquery-3.4.1.js"></script>
    <script src="Scripts/umd/popper.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="fontawesome/css/all.min.css" rel="stylesheet" />
    <title>Home</title>
    <style>
        body{
            background:#FBC723;
        }
        ul{
            list-style-type: none;
            padding-left:10px;
        }
        table td{
            cursor:pointer;
        }
        #left li{
            list-style-type: none;
            height:30px;
            margin-bottom:10px;
            font-size:20px;
            cursor:pointer;
            border-radius:2%;
        }
        #left li:hover{
            background:#fff;
            color:#000;
        }
        header{
            padding:10px;
        }
        #head {
            background: #E8110F;
            height: 100px;
            z-index: 1;
            padding: 10px;
        }
        #main{
            background:#FBC723;
            z-index:1;
            padding:10px 10px 10px 10px;
        }
        #left {
            position: absolute;
            left: 0px;
            width: 0px;
            z-index: 2;
            background: #333333;
            padding: 10px 0 10px 0;
            color: #fff;
        }
        #left-open{
            margin-left:10px;
        }
        .container-fluid{
            padding:0px;
            font-family:Microsoft JhengHei;
        }
        .notice-frame {
            position: fixed;
            left: 31.5%;
            display: none;
            border-radius: 2%;
            z-index: 5;
        }
        .notice-cover {
            position: fixed;
            left: 0;
            top: 0;
            z-index: 3;
            background: #000;
            opacity: 0.5;
            width: 100%;
            height: 100%;
            display: none;
        }
        .notice-head {
            background: #1B6AA5;
            border-radius: 5px 5px 0 0;
        }
        .notice-body{
            background:#eaeaea;
        }
        .notice-foot{
            background:#eaeaea;
            border-radius:0 0 5px 5px;
        }
        .notice-comfirm{
            float:right;
        }
        .notice-close{
            margin:5px;
            cursor:pointer;
            float:right;
        }
        .notice-title{
            margin:5px;
            font-size:32px;
        }
        .notice-content {
            margin: 5px;
        }
        .page{
            float:right;
            z-index:2;
            display:none;
            margin-right:-10px;
        }
        .page-head{
            background:#FD7013;
            border-radius:5px 5px 0 0;
            color:#000;
            height:60px;
        }
        .page-body{
            background:#393E46;
            color:#fff;
        }
        .page-foot{
            background:#222831;
            border-radius:0 0 5px 5px;
            color:#6c757d;
            height:60px;
        }
        .page-title{
            font-size:34px;
        }
        .page-text{
            font-size:28px;
        }
        .page-btn-right{
            float:right;
            margin:10px 0 0 5px;
        }
        .page-btn-left {
            margin: 10px 5px 0 0;
        }
        .page-close{
            float:right !important;
            margin-top:10px;
            cursor:pointer;
        }
        .page-count {
            float: right;
            font-size: 20px;
            margin: 10px 5px 0 0;
        }
        .page-table{
            display:none;
        }
        .Page-main{
            margin-bottom:10px;
        }
        .datePicker{
            position:fixed;
            left:25%;
            top:20%;
            z-index:4;
            display:none;
        }
        .picker-head{
            border-radius: 2% 2% 0 0;
            background:#FD7013;
            padding:3px;
        }
        .picker-head span{
            font-size:32px;
        }
        .picker-close{
            float:right;
            margin-left:5px;
            margin-right:3px;
            cursor:pointer;
        }
        .picker-multiple{
            float:right;
            margin-top:3px;
            margin-right:5px;
        }
        .multiple-comfirm {
            float: right;
            margin-right: 5px;
            margin-top: 3px;
            display: none;
        }
        .datePicker td {
            cursor: pointer;
        }
        .arrangement-frame {
            position: fixed;
            left: 31.5%;
            top: 31%;
            display: none;
            border-radius: 2%;
            z-index: 5;
        }
        .arrangement-head {
            background: #1B6AA5;
            border-radius: 5px 5px 0 0;
        }
        .arrangement-head span {
            font-size: 32px;
        }
        .arrangement-head-main {
            margin-left: 5px;
        }
        .arrangement-body {
            background: #eaeaea;
            font-size: 16px;
        }
        .arrangement-body-main{
            margin-left:5px;
        }
        .arrangement-body label{
            margin-right:5px;
        }
        .arrangement-body input{
            margin-left:5px;
        }
        .arrangement-foot {
            background: #eaeaea;
            border-radius: 0 0 5px 5px;
        }
        .arrangement-sec {
            line-height: 16px;
            margin-bottom: 5px;
        }
        .arrangement-close {
            margin: 5px;
            cursor: pointer;
            float: right;
        }
        .arrangement-comfirm{
            float:right;
            margin :5px;
        }
    </style>
</head>
<body>
    <div class="container-fluid">
        <div class='notice-cover'></div>
        <div class="row" id="frame">
            <div class="col-12" id="head">
                <div class="row">
                    <header class="col-5">
                        <button type="button" class="btn btn-outline-light" id="left-open">
                            <i class="fas fa-bars fa-2x"></i>
                        </button>
                    </header>
                    <header>
                        <h1 style="font-family:monospace;font-weight:bold;">
                            Mcdonald
                        </h1>
                    </header>
                </div>
            </div>
            <div class="col-12" id="main">
                <div id="DataPage" class="page row">
                    
                </div>
            </div>
            <div id="left" class="row">
                <div class="col-12" id="tool-top" style="height: 50px">
                    <span id="user" style="display: none; font-size: 28px; margin-left: 10px"></span>
                    <button type="button" class="btn btn-outline-light" style="float: right; display: none " id="left-close">
                        <i class="fas fa-arrow-left fa-2x"></i>
                    </button>
                </div>
                <div class="col-12" style="height: 20px ">
                    <hr />
                </div>
                <div class="col-12" id="tool" style="display: none ">
                    <ul>
                        <li id="weekShiftTable">
                            週班表
                        </li>
                        <li id="dayShiftTable">
                            日班表
                        </li>
                        <li id="absenceNote">
                            劃假
                        </li>
                        <li id="salary">
                            薪資表
                        </li>
                        <li id="information">
                            最新公告
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</body>
<script>
    var width = $(this).width();
    var height = $(this).height();
    var user = "<%=Session["userName"]%>";
    var position = "<%=Session["userPosition"]%>";
    var ac = "<%=Session["userAC"]%>";
    var D = new Date();
    
    $(".page-count").prop("count", 1);
    $("#tool").prop("locate", 0);
    $("#left li").attr("select", 0);

    $(this).ready(function () {
        setSize();
        $("#user").text(user);
    })
    $(this).resize(function () {
        width = $(this).width();
        height = $(this).height();
        setSize();
    })
    $("#left-open").click(function () {
        $("#left-open").fadeOut();
        $("#left").animate({
            width: "300px"
        }, 1000, function () {
                $("#left-close").fadeIn();
                $("#user").fadeIn();
                $("#tool").fadeIn();
        })
    })
    $("#left-close").click(function () {
        $("#tool").fadeOut();
        $("#user").fadeOut();
        $("#left-close").fadeOut();
        $("#left").animate({
            width: "0px"
        }, 1000, function () {
                $("#left-open").fadeIn();
        })
    })
    $("#weekShiftTable").click(function () {
        $("#left li[select=1]").attr("select", 0);
        $(this).attr("select", 1);
        $("#tool").prop("locate-pre", $("#tool").prop("locate"));
        $("#tool").prop("locate", 1);
        $.ajax({
            url: "getData",
            type: "post",
            data: {
                type: "week_get"
            },
            async: false,
            success: function (data) {
                $("#DataPage").children(".Page-main").remove();
                if (data == "\"\"" || data == "") {
                    notice({
                        content: "尚未建立資料!是否現在建立?"
                    })
                    fillEmptyShift();
                }
                else {
                    data = JSON.parse(data);
                    var flag = false;
                    var currentShift = "";
                    var pageNum = 0;
                    var maxPageArray = getMaxPage(data);
                    var colNum = 1;
                    if (checkDate(data)) {
                        addNewPage();
                        fillEmptyShift();
                        $(".page-body").last().attr("status", "0");
                    }
                    $.each(data, function (i, o) {
                        if (i == 0) {
                            currentShift = o.ShiftDate;
                            addNewPage();
                            $(".page-count").last().prop("count", 1);
                            $(".page-count").last().text("第1頁");
                            $(".page-count").last().prop("max", maxPageArray["data"][pageNum].page);
                            $(".creater").last().text("製表人:" + o.Creater);
                            $(".shiftDate").last().text(o.ShiftDate);
                            if (o.Status == "0") {
                                $(".page-body").last().attr("status", "0");
                                alert(o.ShiftDate + "的班表尚未完成!");
                            }
                            else {
                                $(".page-body").last().attr("status", "1");
                                $(".page-body").last().find("td").removeAttr("ondbclick");
                                $(".Page-main").last().find(".page-btn-left").hide();
                            }
                        }
                        return false;
                    })
                    $.each(data, function (i, o) {
                        if (o.ShiftDate != currentShift) {
                            currentShift = o.ShiftDate;
                            colNum = 1;
                            pageNum++;
                            addNewPage();
                            $(".page-count").last().prop("count", 1);
                            $(".page-count").last().text("第1頁");
                            $(".page-count").last().prop("max", maxPageArray["data"][pageNum].page);
                            $(".creater").last().text("製表人:" + o.Creater);
                            $(".shiftDate").last().text(o.ShiftDate);
                            if (o.Status == "0") {
                                $(".page-body").last().attr("status", "0");
                                alert(o.ShiftDate + "的班表尚未完成!");
                            }
                            else {
                                $(".page-body").last().attr("status", "1");
                                $(".page-body").last().find("td").removeAttr("ondbclick");
                                $(".Page-main").last().find(".page-btn-left").hide();
                            }
                        }
                        if (colNum % 7 == 1 && colNum != 1) {
                            $(".page-body").last().append(
                                `<table class='table table-dark table-striped table-bordered page-table'>
                                    <thead>
                                        <tr>
                                            <th scope='col'>#</th>
                                            <th scope='col'>Name</th>
                                            <th scope='col'>Mon<span></span></th>
                                            <th scope='col'>Tue<span></span></th>
                                            <th scope='col'>Wed<span></span></th>
                                            <th scope='col'>Thu<span></span></th>
                                            <th scope='col'>Fri<span></span></th>
                                            <th scope='col'>Sat<span></span></th>
                                            <th scope='col'>Sun<span></span></th>
                                        </tr>
                                    </thead>
                                    <tbody></tbody>
                                </table>`
                            );

                        }
                        $(".page-table").last().find("tbody").append(
                            `<tr class='column'>
                                    <th scope='row'></th>
                                    <td ondblclick='editTD(this)' class='column-1'></td>
                                    <td ondblclick='editTD(this)' class='column-2'></td>
                                    <td ondblclick='editTD(this)' class='column-3'></td>
                                    <td ondblclick='editTD(this)' class='column-4'></td>
                                    <td ondblclick='editTD(this)' class='column-5'></td>
                                    <td ondblclick='editTD(this)' class='column-6'></td>
                                    <td ondblclick='editTD(this)' class='column-7'></td>
                                    <td ondblclick='editTD(this)' class='column-8'></td>
                                </tr>`
                        );
                        $(".column").last().find("th").text(colNum);
                        $(".column").last().find(".column-1").text(o.EmployeeName);
                        $(".column").last().find(".column-2").text(o.Day1);
                        $(".column").last().find(".column-3").text(o.Day2);
                        $(".column").last().find(".column-4").text(o.Day3);
                        $(".column").last().find(".column-5").text(o.Day4);
                        $(".column").last().find(".column-6").text(o.Day5);
                        $(".column").last().find(".column-7").text(o.Day6);
                        $(".column").last().find(".column-8").text(o.Day7);
                        colNum++;
                    })
                }
                FillShiftDate();
                FillNoteInfo();
                $(".page-table").attr("status", "off");
                var allPage = $(".page-body");
                for (var i = 0; i < allPage.length; i++) {
                    $(allPage[i]).find(".page-table").first().attr("status", "on");
                }
                $(".page-table[status='on']").fadeIn();
                $(".page-title").text("周班表");
                $("#DataPage").fadeIn();
            }
        })
        $(".page-title").text("周班表");
        setSize()
        $("#DataPage").fadeIn();
    })
    $("#dayShiftTable").click(function () {
        $("#left li[select=1]").attr("select", 0);
        $(this).attr("select", 1);
        $("#tool").prop("locate-pre", $("#tool").prop("locate"));
        $("#tool").prop("locate", 2);
        $.ajax({
            url: "getData",
            type: "post",
            data: {
                type: "day_get"
            },
            success: function (data) {
                $(".page-count").prop("count", 1);
                $(".page-count").text("第1頁");
                $(".page-count").prop("max", 1);
                $(".page-table").first().find("tbody").children().remove();
                $(".page-table").first().nextAll(".page-table").remove();
                if (data == "\"\"" || data == "") {
                    notice({
                        content: "尚未建立資料!是否現在建立?"
                    })
                    $(".page-title").first().text("日班表");
                    $(".shiftDate").first().text("");
                    $("#DataPage").fadeIn();
                }
                else {
                    data = JSON.parse(data);
                    $(".page-title").text("日班表");
                    $(".shiftDate").first().text("");
                    $("#DataPage").fadeIn();
                }
            }
        })
    })
    $("#absenceNote").click(function () {
        $("#left li[select=1]").attr("select", 0);
        $(this).attr("select", 1);
        $("#tool").prop("locate-pre", $("#tool").prop("locate"));
        $("#tool").prop("locate", 3);
        DatePicker();
    })
    $("#salary").click(function () {
        $("#left li[select=1]").attr("select", 0);
        $(this).attr("select", 1);
        $("#tool").prop("locate-pre", $("#tool").prop("locate"));
        $("#tool").prop("locate", 4);
        $.ajax({
            url: "getData",
            type: "post",
            data: {
                type: "salary_get"
            },
            success: function (data) {
                $(".page-count").prop("count", 1);
                $(".page-count").text("第1頁");
                $(".page-count").prop("max", 1);
                $(".page-table").first().find("tbody").children().remove();
                $(".page-table").first().nextAll(".page-table").remove();
                if (data == "\"\"" || data == "") {
                    notice({
                        content: "尚未建立資料!是否現在建立?"
                    })
                    $(".page-title").text("薪資表");
                    $(".shiftDate").first().text("");
                    $("#DataPage").fadeIn();
                }
                else {
                    data = JSON.parse(data);
                    $(".page-title").text("薪資表");
                    $(".shiftDate").first().text("");
                    $("#DataPage").fadeIn();
                }
            }
        })
    })
    $("#information").click(function () {
        $("#DataPage").fadeOut();
        $("#left li[select=1]").attr("select", 0);
        $(this).attr("select", 1);
        $("#tool").prop("locate-pre", $("#tool").prop("locate"));
        $("#tool").prop("locate", 5);
    })
    $("#left li").click(function () {
        switch ($("#tool").prop("locate")) {
            case 0:
                $("#weekShiftTable").css({ "background": "#333333", "color": "#fff" });
                $("#dayShiftTable").css({ "background": "#333333", "color": "#fff" });
                $("#absenceNote").css({ "background": "#333333", "color": "#fff" });
                $("#salary").css({ "background": "#333333", "color": "#fff" });
                $("#information").css({ "background": "#333333", "color": "#fff" });
                break;
            case 1:
                $("#weekShiftTable").css({ "background": "#fff", "color": "#000" });
                break;
            case 2:
                $("#dayShiftTable").css({ "background": "#fff", "color": "#000" });
                break;
            case 3:
                $("#absenceNote").css({ "background": "#fff", "color": "#000" });
                break;
            case 4:
                $("#salary").css({ "background": "#fff", "color": "#000" });
                break;
            case 5:
                $("#information").css({ "background": "#fff", "color": "#000" });
                break;
        }
        switch ($("#tool").prop("locate-pre")) {
            case 0:
                break;
            case 1:
                $("#weekShiftTable").css({ "background": "#333333", "color": "#fff" });
                break;
            case 2:
                $("#dayShiftTable").css({ "background": "#333333", "color": "#fff" });
                break;
            case 3:
                $("#absenceNote").css({ "background": "#333333", "color": "#fff" });
                break;
            case 4:
                $("#salary").css({ "background": "#333333", "color": "#fff" });
                break;
            case 5:
                $("#information").css({ "background": "#333333", "color": "#fff" });
                break;
        }
        $("#left li[select!=1]").hover(function () {
            $(this).css({ "background": "#fff", "color": "#000" });
        }, function () {
            $(this).css({ "background": "#333333", "color": "#fff" });
        })
    })
    function closePage() {
        $("#tool").prop("locate", 0);
        $("#DataPage").fadeOut();
        $("#weekShiftTable").css({ "background": "#333333", "color": "#fff" });
        $("#dayShiftTable").css({ "background": "#333333", "color": "#fff" });
        $("#absenceNote").css({ "background": "#333333", "color": "#fff" });
        $("#salary").css({ "background": "#333333", "color": "#fff" });
        $("#information").css({ "background": "#333333", "color": "#fff" });
        $("#left li").hover(function () {
            $(this).css({ "background": "#fff", "color": "#000" });
        }, function () {
            $(this).css({ "background": "#333333", "color": "#fff" });
        })
    }
    function updateData() {
        D.setDate(D.getDate() + 7);
        var nowDay = D.getDay();
        var col1 = $(".page-body[status='0']").find(".column-1");
        var col2 = $(".page-body[status='0']").find(".column-2");
        var col3 = $(".page-body[status='0']").find(".column-3");
        var col4 = $(".page-body[status='0']").find(".column-4");
        var col5 = $(".page-body[status='0']").find(".column-5");
        var col6 = $(".page-body[status='0']").find(".column-6");
        var col7 = $(".page-body[status='0']").find(".column-7");
        var col8 = $(".page-body[status='0']").find(".column-8");
        var json = {};
        var shiftDate = shiftDateNext();
        for (var i = 0; i < col1.length; i++) {
            var n = col1[i].innerText;
            var $1 = col2[i].innerText;
            var $2 = col3[i].innerText;
            var $3 = col4[i].innerText;
            var $4 = col5[i].innerText;
            var $5 = col6[i].innerText;
            var $6 = col7[i].innerText;
            var $7 = col8[i].innerText;
            if (i == 0) {
                json = { data: [{ name: n, data1: $1, data2: $2, data3: $3, data4: $4, data5: $5, data6: $6, data7: $7 }] };
            }
            else {
                json["data"].push({ name: n, data1: $1, data2: $2, data3: $3, data4: $4, data5: $5, data6: $6, data7: $7 });
            }
        }
        json = JSON.stringify(json);
        $.ajax({
            url: "getData",
            type: "post",
            async: false,
            data: {
                data: json,
                type: "week_set",
                status: 1,
                creater: user,
                date: shiftDate
            },
            success: function () {
                notice({
                    content: "資料送出成功!"
                })
            }
        })
    }
    function saveData() {
        var col1 = $(".page-body[status='0']").find(".column-1");
        var col2 = $(".page-body[status='0']").find(".column-2");
        var col3 = $(".page-body[status='0']").find(".column-3");
        var col4 = $(".page-body[status='0']").find(".column-4");
        var col5 = $(".page-body[status='0']").find(".column-5");
        var col6 = $(".page-body[status='0']").find(".column-6");
        var col7 = $(".page-body[status='0']").find(".column-7");
        var col8 = $(".page-body[status='0']").find(".column-8");
        var json = {};
        var shiftDate = shiftDateNext();
        for (var i = 0; i < col1.length; i++) {
            var n = col1[i].innerText;
            var $1 = col2[i].innerText;
            var $2 = col3[i].innerText;
            var $3 = col4[i].innerText;
            var $4 = col5[i].innerText;
            var $5 = col6[i].innerText;
            var $6 = col7[i].innerText;
            var $7 = col8[i].innerText;
            if (i == 0) {
                json = { data: [{ name: n, data1: $1, data2: $2, data3: $3, data4: $4, data5: $5, data6: $6, data7: $7 }] };
            }
            else {
                json["data"].push({ name: n, data1: $1, data2: $2, data3: $3, data4: $4, data5: $5, data6: $6, data7: $7 });
            }
        }
        json = JSON.stringify(json);
        $.ajax({
            url: "getData",
            type: "post",
            async: false,
            data: {
                data: json,
                type: "week_set",
                status: 0,
                creater: user,
                date: shiftDate
            },
            success: function () {
                notice({
                    content: "資料儲存成功!"
                })
            }
        })
    }
    function shiftDateNext() {
        D.setDate(D.getDate() + 7);
        var nowDay = D.getDay();
        var shiftDate = "";
        if (nowDay != 1 && nowDay != 0) {
            D.setDate(D.getDate() - nowDay + 1);
            shiftDate = D.getMonth() + 1 + "\/" + D.getDate();
            D.setDate(D.getDate() + 6);
            shiftDate += "~" + (D.getMonth() + 1) + "\/" + D.getDate();
        }
        else if (nowDay == 1) {
            shiftDate = D.getMonth() + 1 + "\/" + D.getDate();
            D.setDate(D.getDate() + 6);
            shiftDate += "~" + (D.getMonth() + 1) + "\/" + D.getDate();
        }
        else if (nowDay == 0) {
            D.setDate(D.getDate() - 6);
            shiftDate = D.getMonth() + 1 + "\/" + D.getDate();
            D.setDate(D.getDate() + 6);
            shiftDate += "~" + (D.getMonth() + 1) + "\/" + D.getDate();
        }
        D = new Date();
        return shiftDate;
    }
    function notice(json) {
        var noticeWidth = width / 3;
        var noticeHeight = height / 2.5;
        var title = "Notice";
        var content = "WriteSomeThing";

        $(".container-fluid").append(
            `<div class='notice-frame'>
                <div class='notice-head'>
                    <span class='notice-title'></span>
                    <i class='notice-close fas fa-times'></i>
                </div>
                <div class='notice-body'>
                    <span class='notice-content'></span>
                </div>
                <div class='notice-foot'>
                    <button type='button' class='btn btn-outline-secondary notice-comfirm'>確認</button>
                </div>
            </div>`
        );
        $(".notice-comfirm").css({ "margin": "20px 5px 5px 5px" });
        $(".notice-frame").css({ "top": "31%" });
        $(".notice-frame").width(noticeWidth);
        $(".notice-frame").height(noticeHeight);
        $(".notice-head").height(noticeHeight / 4);
        $(".notice-body").height(noticeHeight / 2);
        $(".notice-foot").height(noticeHeight / 4);
        $(".notice-title").text(title);
        $(".notice-content").html(content);
        if (json.title) {
            $(".notice-title").text(json.title);
        }
        if (json.content) {
            $(".notice-content").html(json.content);
        }
        if (json.size == "large") {
            noticeWidth = width / 2;
            noticeHeight = height / 1.5;
            $(".notice-comfirm").css({ "margin": "20px 5px 5px 5px" });
            $(".notice-frame").css({ "top": "25%" });
            $(".notice-head").height(65);
            $(".notice-body").height(noticeHeight - 130);
            $(".notice-foot").height(65);
        }
        if (json.size == "small") {
            noticeWidth = width / 4;
            noticeHeight = height / 3.5;
            $(".notice-comfirm").css({ "margin": "5px 5px 5px 5px" });
            $(".notice-head").height(noticeHeight / 4);
            $(".notice-body").height(noticeHeight / 2);
            $(".notice-foot").height(noticeHeight / 4);
        }
        if (json.dataReturn) {
            dataReturn = json.dataReturn;
        }
        
        $(".notice-cover").fadeIn();
        $(".notice-frame").fadeIn();
        $(".notice-close").click(function () {
            $(".notice-cover").fadeOut();
            $(".notice-frame").fadeOut(function () {
                $(this).remove();
            })
        })
        $(".notice-comfirm").click(function () {
            $(".notice-close").click();
        })
    }
    function setSize() {
        $("#frame").width(width);
        $("#frame").height(height);
        $("#left").height(height);
        $("#main").height(height - 100);
        $("#tool").height(height - 70);
        $(".page").height(height - 100);
        $(".page").width(width - 300);
        $(".page-body").height(height - 220);
        $(".notice-frame").width(width / 3);
        $(".notice-frame").height(height / 2.5);
        $(".notice-head").height((height / 2.5) / 4);
        $(".notice-body").height((height / 2.5) / 2);
        $(".notice-foot").height((height / 2.5) / 4);
        $(".arrangement-frame").width(width / 3);
        $(".arrangement-frame").height(height / 2);
        $(".arrangement-head").height((height / 2) * 0.15);
        $(".arrangement-body").height((height / 2) * 0.7);
        $(".arrangement-foot").height((height / 2) * 0.15);
        $(".arrangement-body textarea").width((width / 3) - 20);
        $(".arrangement-body textarea").height((height / 2) * 0.21);
        $(".datePicker").width(width / 2);
        $(".datePicker").height(height / 2);
        $(".notice-textarea").width($(".notice-body").width()-20);
        $(".notice-textarea").height($(".notice-body").height()-10);
    }
    function editTD(element) {
        var origin = $(element).text();
        $(element).text("");
        $(element).append("<div onkeydown='tdSend(this)' contenteditable='true' on class='td-edit'></div>");
        $(".td-edit").last().width($(element).width());
        $(".td-edit").last().height($(element).height());
        $(".td-edit").last().text(origin);
    }
    function tdSend(element) {
        if (event.keyCode == 13) {
            event.preventDefault();
            var val = $(element).text();
            $(element).parent("td").text(val);
            $(element).remove();
        }
    }
    function nextPage(element) {
        var currentPage = $(element).siblings(".page-count").prop("count");
        var currentTable = $(element).parents(".Page-main").first().find(".page-table[status='on']");
        var maxpage = $(element).siblings(".page-count").prop("max");
        if (currentPage < maxpage) {
            $(element).siblings(".page-count").prop("count", currentPage + 1);
            $(element).siblings(".page-count").text("第" + ++currentPage + "頁");
            currentTable.attr("status", "off");
            currentTable.fadeOut(300, function () {
                currentTable.nextAll(".page-table").first().attr("status", "on");
                currentTable.nextAll(".page-table").first().fadeIn(300);
            });
        }
    }
    function prePage(element) {
        var currentPage = $(element).siblings(".page-count").prop("count");
        var currentTable = $(element).parents(".Page-main").first().find(".page-table[status='on']");
        if (currentPage > 1) {
            $(element).siblings(".page-count").prop("count", currentPage - 1);
            $(element).siblings(".page-count").text("第" + --currentPage + "頁");
            currentTable.attr("status", "off");
            currentTable.fadeOut(300, function () {
                currentTable.prevAll(".page-table").first().attr("status", "on");
                currentTable.prevAll(".page-table").first().fadeIn(300);
            });
        }
    }
    function getMaxPage(source) {
        var currentShift = "";
        var colNum = 1;
        var result = 0;
        var json = { data: [] };
        $.each(source, function (i, o) {
            if (i == 0) {
                currentShift = o.ShiftDate;
            }
            if (currentShift == o.ShiftDate) {
                result = Math.ceil(colNum / 7);
                colNum++;
                if (i + 1 == source.length) {
                    json["data"].push({ page: result });
                }
            }
            else {
                json["data"].push({ page: result });
                currentShift = o.ShiftDate;
                colNum = 2;
            }
        })
        return json;
    }
    function checkDate(source) {
        var targetDate = shiftDateNext();
        var result = true;
        $.each(source, function (i, o) {
            if (o.ShiftDate == targetDate) {
                result = false;
            }
        })
        return result;
    }
    function fillEmptyShift() {
        $.ajax({
            url: "getData",
            type: "post",
            data: {
                type: "get_memberInfo"
            },
            async: false,
            success: function (data) {
                data = JSON.parse(data);
                var maxPage = getMaxPage(data);
                $(".page-count").last().prop("count", 1);
                $(".page-count").last().prop("max", maxPage["data"][0].page);
                $(".shiftDate").last().text(shiftDateNext());
                $.each(data, function (i, o) {
                    if (i != 0 && i % 7 == 0) {
                        $(".page-body").last().append(
                            `<table class='table table-dark table-striped table-bordered page-table'>
                                <thead>
                                    <tr>
                                        <th scope='col'>#</th>
                                        <th scope='col'>Name</th>
                                        <th scope='col'>Mon<span></span></th>
                                        <th scope='col'>Tue<span></span></th>
                                        <th scope='col'>Wed<span></span></th>
                                        <th scope='col'>Thu<span></span></th>
                                        <th scope='col'>Fri<span></span></th>
                                        <th scope='col'>Sat<span></span></th>
                                        <th scope='col'>Sun<span></span></th>
                                    </tr>
                                </thead>
                                <tbody></tbody>
                            </table>`
                        );
                    }
                    if (Math.ceil((i + 1) / 7) == 1) {
                        var table = $(".page-table").last();
                        table.find("tbody").append(
                            `<tr class='column'>
                                <th scope='row'></th>
                                <td ondblclick='editTD(this)' class='column-1'></td>
                                <td ondblclick='editTD(this)' class='column-2'></td>
                                <td ondblclick='editTD(this)' class='column-3'></td>
                                <td ondblclick='editTD(this)' class='column-4'></td>
                                <td ondblclick='editTD(this)' class='column-5'></td>
                                <td ondblclick='editTD(this)' class='column-6'></td>
                                <td ondblclick='editTD(this)' class='column-7'></td>
                                <td ondblclick='editTD(this)' class='column-8'></td>
                            </tr>`
                        );
                        $(".column").last().find("th").text(i + 1);
                        $(".column").last().find(".column-1").text(o.userName);
                        table.attr("status", "on");
                    }
                    else {
                        var table = $(".page-table").last();
                        table.find("tbody").append(
                            `<tr class='column'>
                                <th scope='row'></th>
                                <td ondblclick='editTD(this)' class='column-1'></td>
                                <td ondblclick='editTD(this)' class='column-2'></td>
                                <td ondblclick='editTD(this)' class='column-3'></td>
                                <td ondblclick='editTD(this)' class='column-4'></td>
                                <td ondblclick='editTD(this)' class='column-5'></td>
                                <td ondblclick='editTD(this)' class='column-6'></td>
                                <td ondblclick='editTD(this)' class='column-7'></td>
                                <td ondblclick='editTD(this)' class='column-8'></td>
                            </tr>`
                        );
                        $(".column").last().find("th").text(i + 1);
                        $(".column").last().find(".column-1").text(o.userName);
                        table.attr("status", "off");
                    }
                    
                })
               
            }
        })
    }
    function addNewPage() {
        $("#DataPage").append(
            `<div class="Page-main">
                <div class="page-head col-12">
                    <div class="row">
                        <div class="col-5 align-self-center">
                            <span class="page-title"></span>
                        </div>
                        <div class="col-4 align-self-center">
                            <span class="page-text shiftDate"></span>
                        </div>
                        <div class="col-3 align-self-center">
                            <span class="page-text creater"></span>
                        </div>
                    </div>
                </div>
                <div class="page-body col-12">
                    <br />
                    <table class="table table-dark table-striped table-bordered page-table">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Name</th>
                                <th scope='col'>Mon<span></span></th>
                                <th scope='col'>Tue<span></span></th>
                                <th scope='col'>Wed<span></span></th>
                                <th scope='col'>Thu<span></span></th>
                                <th scope='col'>Fri<span></span></th>
                                <th scope='col'>Sat<span></span></th>
                                <th scope='col'>Sun<span></span></th>
                            </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
                </div>
                <div class="page-foot col-12">
                    <button onclick="nextPage(this)" class="btn btn-outline-secondary page-btn-right next" type="button" >下一頁</button>
                    <button onclick="prePage(this)" class="btn btn-outline-secondary page-btn-right pre" type="button" >上一頁</button>
                    <span class="page-count">第1頁</span>
                    <button onclick="updateData()" class="btn btn-outline-secondary page-btn-left">送出班表</button>
                    <button onclick="saveData()" class="btn btn-outline-secondary page-btn-left">儲存進度</button>
                </div>
            </div>`
        )
    }
    function DatePicker() {
        var counter = 1;
        var date = D.getDate();
        var month = D.getMonth();
        var next = false;
        D.setDate(D.getDate() + 7);
        if (D.getMonth() == month) {
            D = new Date();
            D.setDate(D.getDate() - date + 1);
        }
        else {
            next = true;
            date = D.getDate();
            month = D.getMonth();
            D.setDate(D.getDate() - date + 1);
        }
        
        $(".container-fluid").append(
            `<div class="datePicker">
                <div class="picker-head">
                    <span class="picker-title"></span>
                    <span>月排班</span>
                    <i class='picker-close fas fa-times fa-1x'></i>
                    <button type="button" class="multiple-comfirm btn btn-outline-secondary" onclick="multipleComfirm(this)">完成</button>
                    <button type="button" class="picker-multiple btn btn-outline-secondary" onclick="multipleFun(this)">多重選擇</button>
                </div>
                <div class="picker-body">
                    <table class="table table-dark table-striped table-bordered date-table">
                        <thead>
                            <tr>
                                <th scope="col">Mon</th>
                                <th scope="col">Tue</th>
                                <th scope="col">Wed</th>
                                <th scope="col">Thu</th>
                                <th scope="col">Fri</th>
                                <th scope="col">Sat</th>
                                <th scope="col">Sun</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr class="date-sec1">
                                <td class="date-1" onclick="shiftArrangement(this)"></td>
                                <td class="date-2" onclick="shiftArrangement(this)"></td>
                                <td class="date-3" onclick="shiftArrangement(this)"></td>
                                <td class="date-4" onclick="shiftArrangement(this)"></td>
                                <td class="date-5" onclick="shiftArrangement(this)"></td>
                                <td class="date-6" onclick="shiftArrangement(this)"></td>
                                <td class="date-7" onclick="shiftArrangement(this)"></td>
                            </tr>
                            <tr class="date-sec2">
                                <td class="date-1" onclick="shiftArrangement(this)"></td>
                                <td class="date-2" onclick="shiftArrangement(this)"></td>
                                <td class="date-3" onclick="shiftArrangement(this)"></td>
                                <td class="date-4" onclick="shiftArrangement(this)"></td>
                                <td class="date-5" onclick="shiftArrangement(this)"></td>
                                <td class="date-6" onclick="shiftArrangement(this)"></td>
                                <td class="date-7" onclick="shiftArrangement(this)"></td>
                            </tr>
                            <tr class="date-sec3">
                                <td class="date-1" onclick="shiftArrangement(this)"></td>
                                <td class="date-2" onclick="shiftArrangement(this)"></td>
                                <td class="date-3" onclick="shiftArrangement(this)"></td>
                                <td class="date-4" onclick="shiftArrangement(this)"></td>
                                <td class="date-5" onclick="shiftArrangement(this)"></td>
                                <td class="date-6" onclick="shiftArrangement(this)"></td>
                                <td class="date-7" onclick="shiftArrangement(this)"></td>
                            </tr>
                            <tr class="date-sec4">
                                <td class="date-1" onclick="shiftArrangement(this)"></td>
                                <td class="date-2" onclick="shiftArrangement(this)"></td>
                                <td class="date-3" onclick="shiftArrangement(this)"></td>
                                <td class="date-4" onclick="shiftArrangement(this)"></td>
                                <td class="date-5" onclick="shiftArrangement(this)"></td>
                                <td class="date-6" onclick="shiftArrangement(this)"></td>
                                <td class="date-7" onclick="shiftArrangement(this)"></td>
                            </tr>
                            <tr class="date-sec5">
                                <td class="date-1" onclick="shiftArrangement(this)"></td>
                                <td class="date-2" onclick="shiftArrangement(this)"></td>
                                <td class="date-3" onclick="shiftArrangement(this)"></td>
                                <td class="date-4" onclick="shiftArrangement(this)"></td>
                                <td class="date-5" onclick="shiftArrangement(this)"></td>
                                <td class="date-6" onclick="shiftArrangement(this)"></td>
                                <td class="date-7" onclick="shiftArrangement(this)"></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>`
        );
        if (D.getDay() == 0 || D.getDay() == 6) {
            $(".datePicker").last().find("tbody").append(
                `<tr class="date-sec6">
                    <td class="date-1" onclick="shiftArrangement(this)"></td>
                    <td class="date-2" onclick="shiftArrangement(this)"></td>
                    <td class="date-3" onclick="shiftArrangement(this)"></td>
                    <td class="date-4" onclick="shiftArrangement(this)"></td>
                    <td class="date-5" onclick="shiftArrangement(this)"></td>
                    <td class="date-6" onclick="shiftArrangement(this)"></td>
                    <td class="date-7" onclick="shiftArrangement(this)"></td>
                </tr>`
            );
        }
        while (D.getMonth() == month) {
            var targetSec = "";
            switch (counter){
                case 1:
                    targetSec = $(".date-sec1");
                    break;
                case 2:
                    targetSec = $(".date-sec2");
                    break;
                case 3:
                    targetSec = $(".date-sec3");
                    break;
                case 4:
                    targetSec = $(".date-sec4");
                    break;
                case 5:
                    targetSec = $(".date-sec5");
                    break;
                case 6:
                    targetSec = $(".date-sec6");
                    break;
            }
            switch (D.getDay()){
                case 0:
                    targetSec.find(".date-7").text(D.getDate());
                    ++counter;
                    break;
                case 1:
                    targetSec.find(".date-1").text(D.getDate());
                    break;
                case 2:
                    targetSec.find(".date-2").text(D.getDate());
                    break;
                case 3:
                    targetSec.find(".date-3").text(D.getDate());
                    break;
                case 4:
                    targetSec.find(".date-4").text(D.getDate());
                    break;
                case 5:
                    targetSec.find(".date-5").text(D.getDate());
                    break;
                case 6:
                    targetSec.find(".date-6").text(D.getDate());
                    break;
            }
            D.setDate(D.getDate() + 1);
        }

        $(".picker-title").text((month + 1));
        $(".picker-close").click(function () {
            $(".notice-cover").fadeOut()
            $(this).parents(".datePicker").fadeOut(function () {
                $(this).remove();
            });
        })

        D = new Date();
        var allTD = $("tbody").last().find("td");
        var jsonData = getNoteData();
        if (jsonData) {
            $.each(jsonData, function (i, o) {
                if (o.Month == $(".picker-title").text() && o.UserAc == ac) {
                    var target = $("tbody").last().find("td:contains('" + o.Date + "')");
                    for (var i = 0; i < target.length; i++) {
                        if ($(target[i]).text() == o.Date) {
                            $(target[i]).css({ "background": "#0f0f0f" });
                        }
                    }
                }
            })
        }
        
        for (var i = 0; i < allTD.length; i++) {
            if (!next) {
                var tdDate = $(allTD[i]).text();
                if (parseInt(tdDate) <= D.getDate()) {
                    $(allTD[i]).removeAttr("onclick");
                }
            }
        }
        setSize();
        $(".notice-cover").fadeIn();
        $(".datePicker").last().fadeIn();
    }
    function shiftArrangement(element) {
        var date_length = ($(element).prop("length") != undefined) ? $(element).prop("length") : 1;
        var title = date_length > 3 ? "多" : ($(element).prop("selected") != undefined) ? $(element).prop("selected") : $(element).text();
        $(".container-fluid").append(
            `<div class='arrangement-frame'>
                <div class='arrangement-head'>
                    <div class="arrangement-head-main">
                        <span class='arrangement-title-date'></span>
                        <span class='arrangement-title'>日排班</span>
                        <i class='arrangement-close fas fa-times fa-1x'></i>
                    </div>
                </div>
                <div class='arrangement-body'>
                    <div class="arrangement-body-main">
                        </br>
                        <div class="arrangement-sec">
                        <lable>早班(06:00-12:00)</lable>
                        <input type="checkbox" class="form-check-input" name="time" value="morning"></input>
                        </div>
                        <div class="arrangement-sec">
                        <lable>中班(06:00-12:00)</lable>
                        <input type="checkbox" class="form-check-input" name="time" value="afternoon"></input>
                        </div>
                        <div class="arrangement-sec">
                        <lable>晚班(06:00-12:00)</lable>
                        <input type="checkbox" class="form-check-input" name="time" value="night"></input>
                        </div>
                        <div class="arrangement-sec">
                        <lable>大夜班(22:00-02:00)</lable>
                        <input type="checkbox" class="form-check-input" name="time" value="graveyard"></input>
                        </div>
                        <div class="arrangement-sec">
                        <lable>休假</lable>
                        <input type="checkbox" class="form-check-input" name="time" value="leave"></input>
                        </div>
                        <lable>備註:</lable>
                        </br>
                        <textarea></textarea>
                    </div>
                </div>
                <div class='arrangement-foot'>
                    <button type='button' class='btn btn-outline-secondary arrangement-comfirm'>確認</button>
                </div>
            </div>`
        );
        setSize();
        $(".arrangement-title-date").last().text(title);
        $(".arrangement-frame").fadeIn();
        $(".arrangement-close").click(function () {
            $(".notice-cover").fadeOut();
            $(".arrangement-frame").fadeOut(function () {
                $(this).remove();
            })
        })
        $(".arrangement-comfirm").click(function () {
            var json = { date: [] };
            var time = "";
            var remark = $(".arrangement-body-main").find("textarea").val();
            var array = $("[name='time']:checked");
            var date = ($(element).prop("selected") != undefined) ? $(element).prop("selected") : $(element).text();
            date = date.split(",");
            for (var i = 0; i < date.length; i++) {
                json["date"].push({ date: date[i] });
            }
            for (var i = 0; i < array.length; i++) {
                if (i > 0) {
                    time += ",";
                    time += $(array[i]).val();
                }
                else {
                    time += $(array[i]).val();
                }
            }
            if (array.length > 0) {
                $.ajax({
                    url: "getData",
                    type: "post",
                    data: {
                        user: user,
                        ac: ac,
                        date: JSON.stringify(json),
                        month: $(".picker-title").last().text(),
                        time: time,
                        remarks: remark,
                        type: "absenceNote_send",
                        length: date.length
                    },
                    async: false,
                    success: function (data) {
                        $(".notice-cover").fadeOut();
                        $(".arrangement-frame").fadeOut(function () {
                            $(this).remove();
                        })
                    }
                })
            }
            else {
                alert("至少選擇一個時段!")
            }
        })
    }
    function multipleFun(element) {
        var picker = $(element).parents(".datePicker");
        var allTD = $("tbody").last().find("td");
        picker.find(".multiple-comfirm").fadeIn();
        for (var i = 0; i < allTD.length; i++) {
            var tdDate = $(allTD[i]).text()
            if (parseInt(tdDate) > D.getDate()) {
                $(allTD[i]).attr("onclick", "multipleMode(this)");
            }
        }
    }
    function multipleComfirm(element) {
        $(element).removeProp("selected");
        var picker = $(element).parents(".datePicker");
        var allTD = picker.find("td");
        var targets = { data: [] };
        var targets_length = 0;
        for (var i = 0; i < allTD.length; i++) {
            var item = $(allTD[i]);
            if (item.css("background") == "rgb(27, 106, 165) none repeat scroll 0% 0% / auto padding-box border-box") {
                targets["data"].push({ date: item.text() });
                if ($(element).prop("selected") != undefined) {
                    $(element).prop("selected", $(element).prop("selected") + "," + item.text());
                    ++targets_length;
                }
                else {
                    $(element).prop("selected", item.text());
                    ++targets_length;
                }
                item.css({ "background": item.siblings("td").first().css("background") });
            }
        }
        $(element).prop("length", targets_length);
        if (targets_length > 0) {
            picker.find("td").attr("onclick", "shiftArrangement(this)");
            shiftArrangement(element);
            $(element).fadeOut();
        }
        else {
            alert("至少要選擇一個日期!");
        }
    }
    function multipleMode(element) {
        $(element).css({ "background": "#1B6AA5" });
        $(element).attr("onclick", "multipleModeCancle(this)");
    }
    function multipleModeCancle(element) {
        $(element).css({ "background": $(element).siblings("td").first().css("background") });
        $(element).attr("onclick", "multipleMode(this)");
    }
    function getNoteData() {
        var jsonData = "";
        var status = true;
        $.ajax({
            url: "getData",
            type: "post",
            async: false,
            data: {
                type:"absenceNote_get"
            },
            success: function (data) {
                if (data == "") {
                    status = false;
                }
                else {
                    jsonData = JSON.parse(data);
                }
                
            }
        })
        if (status) {
            return jsonData;
        }
    }
    function getNoteInfo(name) {
        var jsonData = getNoteData();
        var result = { result: [] };
        if (jsonData) {
            $.each(jsonData, function (i, o) {
                if (o.UserName == name) {
                    var time = o.Time.split(",");
                    if (time.length > 1) {
                        var allTime = { allTime: []};
                        for (var i = 0; i < time.length; i++) {
                            switch (time[i]) {
                                case "morning":
                                    allTime["allTime"].push({ time: "morning" });
                                    break;
                                case "afternoon":
                                    allTime["allTime"].push({ time: "afternoon" });
                                    break;
                                case "night":
                                    allTime["allTime"].push({ time: "night" });
                                    break;
                                case "graveyard":
                                    allTime["allTime"].push({ time: "graveyard" });
                                    break;
                                case "leave":
                                    allTime["allTime"].push({ time: "leave" });
                                    break;
                            }
                        }
                        result["result"].push({ date: o.Date, time: allTime, multipleTime: true });
                    }
                    else {
                        switch (time[0]) {
                            case "morning":
                                result["result"].push({ date: o.Date, time: "morning", multipleTime: false });
                                break;
                            case "afternoon":
                                result["result"].push({ date: o.Date, time: "afternoon", multipleTime: false });
                                break;
                            case "night":
                                result["result"].push({ date: o.Date, time: "night", multipleTime: false });
                                break;
                            case "graveyard":
                                result["result"].push({ date: o.Date, time: "graveyard", multipleTime: false });
                                break;
                            case "leave":
                                result["result"].push({ date: o.Date, time: "leave", multipleTime: false });
                                break;
                        }
                    }
                }
            })
            if (result["result"].length == 0) {
                return "notFound";
            }
            else {
                return result;
            }
        }
    }
    function FillShiftDate() {
        var allDtPage = $(".Page-main");
        for (var i = 0; i < allDtPage.length; i++) {
            var alltHead = $(allDtPage[i]).find("thead");
            var firstDate = $(allDtPage[i]).find(".shiftDate").text().split("~");
            firstDate = firstDate[0].split("\/");
            firstDate = parseInt(firstDate[1]);
            for (var k = 0; k < alltHead.length; k++) {
                var allSpan = $(alltHead[k]).find("th span");
                var d = firstDate;
                for (var j = 0; j < allSpan.length; j++ , d++) {
                    $(allSpan[j]).text(d);
                    $(allSpan[j]).prop("order", j+2);
                }
            }
        }
    }
    function FillNoteInfo() {
        var targetPage = $(".page-body[status='0']");
        var allName = targetPage.find(".column").find(".column-1");
        for (var i = 0; i < allName.length; i++) {
            var workTime = getNoteInfo($(allName[i]).text()) != "notFound" ? getNoteInfo($(allName[i]).text()) : false;
            var targetTR = targetPage.find(".column-1:contains('" + $(allName[i]).text() + "')").parents("tr").children();
            if (workTime) {
                var result = workTime["result"];
                for (var k = 0; k < result.length; k++) {
                    var date = result[k].date;
                    var spanElement = targetPage.find("thead th span:contains('" + date + "')");
                    
                    if (result[k].multipleTime) {
                        if (spanElement.length != 0) {
                            var order = spanElement.prop("order");
                            $(targetTR[order]).prop("work-time", JSON.stringify(result[k].time));
                            $(targetTR[order]).css({ "background": "#1B6AA5" });
                            $(targetTR[order]).attr("onclick", "popTimeDetail(this)");
                        }
                    }
                    else {
                        if (spanElement.length != 0) {
                            var order = spanElement.prop("order");
                            switch (result[k].time) {
                                case "leave":
                                    $(targetTR[order]).css({ "background": "#dd0a35" });
                                    break;
                                case "morning":
                                    $(targetTR[order]).text("06:00-12:00");
                                    break;
                                case "afternoon":
                                    $(targetTR[order]).text("12:00-18:00");
                                    break;
                                case "night":
                                    $(targetTR[order]).text("18:00-00:00");
                                    break;
                                case "graveyard":
                                    $(targetTR[order]).text("22:00-02:00");
                                    break;
                            }
                        }
                    }
                }
            }
        }
    }
    function popTimeDetail(element) {
        var json = JSON.parse($(element).prop("work-time"));
        var content = json["allTime"][0].time;
        for (var i = 1; i < json["allTime"].length; i++) {
            content += "," + json["allTime"][i].time;
        }
        notice({
            title: "上班時間",
            content: content
        })
    }
    
</script>
</html>
