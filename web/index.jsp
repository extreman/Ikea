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
           <section>
            <h1>PRODUCTOS IKEA</h1>
            <button onclick="location='insertProduct.jsp'">AÑADIR PRODUCTOS</button><br>
            <br>
            <button onclick="location='listProduct.jsp'">LISTAR PRODUCTOS</button><br>
            <br>
            <button onclick="location='borrarProducto.jsp'">BORRAR PRODUCTO</button>
           </section>
    </body>
</html>
