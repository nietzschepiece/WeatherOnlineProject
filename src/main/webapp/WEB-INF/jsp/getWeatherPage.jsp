<%--
  Created by IntelliJ IDEA.
  User: cci
  Date: 19.05.2017
  Time: 13:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Pagina nebuna</title>
    <style>
        .container {margin: auto; width: 60%; text-align:center; margin-top:5%;}
        .middle {margin: auto; width: 60%; }
        .button{background-color: #fe7918;  border-radius: 7px;  border: 1px solid transparent;
            padding: 12px 12px;  font-size: 16px;  color: white;  font-weight: 600;}
        input:focus {
            box-shadow: 0 0 5px #FF6600;  outline:none;
        }
        .input-field{border: none;  border-radius: 10px;  font-size: 16px;  background-color: rgba(244, 244, 244, 0.58);
            padding: 14px 50px 14px 10px;  min-width: 125px;  max-width: 450px;  width: 100%;  color: #FF6600;
            text-shadow: 0 0 0 #000;}
        #leftSide{width: 35%;}
        table {font-family: arial, sans-serif;  border-collapse: collapse;}
        td, th {border: 1px solid #dddddd; text-align: left; padding: 8px;}
        tr:nth-child(even) {background-color: #f3f0f0;}
        hr{ margin-top: 20px; margin-bottom: 20px; border: 0; border-top: 1px solid #eee;}
        img {vertical-align: middle;}
        #maxTemp {display: inline;  padding: .2em .6em .3em;  font-size: 75%;  font-weight: 700;
            line-height: 1;  color: #fff;  text-align: center;  white-space: nowrap;  vertical-align: baseline;  border-radius: .25em;  }
    </style>
</head>

<body>
<div class="container">

    <form action="/getWeather">
        <input type="text" name="city" placeholder="Your city name" class="input-field">
        <input type="submit" value="Search" class="button">
    </form>

</div>
<div class="middle">
    <hr>

    <div id="leftSide" style="float: left;">
    <h2 class="weather-widget">
        <p>Weather in ${response.name}, ${response.sys.country}</p>
        <div id="temperatura">
            <img src="http://openweathermap.org/img/w/${response.weather[0].icon}.png">
            ${response.main.temp} &deg;C
        </div>
    </h2>

    <table>
        <tr>
            <td>Description</td>
            <td>${response.weather[0].description}</td>
        </tr>
        <tr>
            <td>Wind</td>
            <td>${response.wind.speed} m/s, ( ${response.wind.deg} )</td>
        </tr>
        <tr>
            <td>Pressure</td>
            <td>${response.main.pressure} hpa</td>
        </tr>
        <tr>
            <td>Humidity</td>
            <td>${response.main.humidity} %</td>
        </tr>
        <tr>
            <td>Geo Coords</td>
            <td style="color: #e67035">[ ${response.coord.lon} , ${response.coord.lat} ] </td>
        </tr>
    </table>
    </div>

    <div class="dayOfWeek" style="float: left;">
        <table>
            <c:forEach items="${days}" var="listDays" varStatus="contor">
                <tr>
                    <td style="padding:20px; border-left: 1px solid #dddddd;">
                        <div style="float: left; width: 250px;">
                        ${listDays.dt}
                        ${listDays.dayOfWeek}
                        ${listDays.dayOfMonth}
                        ${listDays.month}
                        <img src="http://openweathermap.org/img/w/${listDays.weather[0].icon}.png">
                        </div>
                        <div style="float: left; padding: 14px;">
                        <span id="maxTemp" style="background-color: #f0ad4e;">${listDays.temp.day}&deg;C</span>
                        <span id="maxTemp" style="background-color: #999;">${listDays.temp.night}&deg;C</span>
                        ${listDays.weather[0].description}
                        </div>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>

</div>



</body>
</html>
