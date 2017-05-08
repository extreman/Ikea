<%-- 
    Document   : borrarProducto
    Created on : May 8, 2017, 1:19:45 PM
    Author     : Gonzalo Pulido Mendoza
--%>

<%@page import="ikea.Producto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ikea.Fichero"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <title>Borrar Producto</title>
    </head>
    <%
        String nombre = request.getParameter("nombre");
        String respuesta = "";
        if(nombre!=null){
            respuesta="No se encontraron coincidencias";
            Fichero f = new Fichero("almacen.bin","rb");
            ArrayList<Producto> productos = Producto.ObjectoAProducto(f.leerTodos());
            f.close();
            ArrayList<Producto> proNuevo = new ArrayList<>();
            for(Producto pro: productos){
                if(!pro.getNombre().equals(nombre)){
                    proNuevo.add(pro);
                    respuesta="Encontré al menos una coincidencia";
                }
            }
            f = new Fichero("almacen.bin","wb");
            f.escribirTodos(Producto.ProductoAObjeto(proNuevo));
            f.close();
        }
    %>
    <body>
        <header>
            <%@include file="html/cabecera.html"%>
        </header>
        <section>
        <h1>BORRAR PRODUCTO</h1>
        <%@include file="html/inicio.html"%>
        <br>
        <form action="borrarProducto.jsp" method="POST">
            Nombre:<input type="text" name="nombre"><br>
            <br>
            <input type="submit" value="Borrar">
            <input type="reset" value="Reset">
        </form>
        <%=respuesta%>
        </section>
    </body>
</html>
