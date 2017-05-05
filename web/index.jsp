<%-- 
    Document   : index
    Created on : May 4, 2017, 12:04:59 PM
    Author     : Gonzalo Pulido Mendoza
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <title>IKEA</title>
    </head>
    <body>
        <header>
            <%@include file="html/cabecera.html"%>
        </header>
            <h1>PRODUCTOS IKEA</h1>
            <h2>Opciones de productos</h2>
            <ul>
                <li><a href="jsp/insertProduct.jsp">Añadir productos</a></li>
                <li><a href="jsp/listProduct.jsp">Listado de productos</a></li>
            </ul>       
    </body>
</html>
