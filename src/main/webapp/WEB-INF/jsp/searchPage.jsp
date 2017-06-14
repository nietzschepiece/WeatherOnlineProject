<%--
  Created by IntelliJ IDEA.
  User: cci
  Date: 19.05.2017
  Time: 13:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pagina nebuna</title>
    <style>
        .container {margin: auto; width: 60%; text-align:center; margin-top:5%;}
        .button{background-color: #fe7918;  border-radius: 7px;  border: 1px solid transparent;
            padding: 12px 12px;  font-size: 16px;  color: white;  font-weight: 600;}
        input:focus {
            box-shadow: 0 0 5px #FF6600;  outline:none;
        }
        .input-field{border: none;  border-radius: 10px;  font-size: 16px;  background-color: rgba(244, 244, 244, 0.58);
            padding: 14px 50px 14px 10px;  min-width: 125px;  max-width: 450px;  width: 100%;  color: #FF6600;
            text-shadow: 0 0 0 #000;}
    </style>
</head>

<body>
<div class="container">

    <form action="/getWeather">
        <input type="text" name="city" placeholder="Your city name" class="input-field">
        <input type="submit" value="Search" class="button">
    </form>


</div>


</body>
</html>
