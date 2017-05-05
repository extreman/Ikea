<%-- 
    Document   : listProduct
    Created on : May 4, 2017, 12:37:42 PM
    Author     : Gonzalo Pulido Mendoza
--%>

<%@page import="java.io.EOFException"%>
<%@page import="ikea.Producto"%>
<%@page import="java.io.*"%>
<%@page import="ikea.Fichero"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <title>Lista producto</title>
    </head>
    <body>
        <header>
            <%@include file="html/cabecera.html"%>
        </header>
        <h2>LISTA PRODUCTO</h2>
        <%@include file="html/inicio.html" %>
        <br>
        <table>
            <tr class="list">
                <th class="list">Id</th>
                <th class="list">Nombre</th>
                <th class="list">Descripción</th>
                <th class="list">Precio</th>
            </tr>
        <%
            ObjectInputStream ois;
            String respuesta="";
                Fichero f = new Fichero("almacen.bin","rb");
                Producto aux = (Producto) f.leerObjeto();
                while(aux!=null){
                    
                    respuesta+="<tr class='list'>\n"
                            + "<td class='list'>"+aux.getId()+"</td>\n"
                            + "<td class='list'>"+aux.getNombre()+"</td>\n"
                            + "<td class='list'>"+aux.getDescripcion()+"</td>\n"
                            + "<td class='list'>"+aux.getPrecio()+"</td>\n"
                            + "</tr>\n";
                    //respuesta+=aux.toString();
                   
                    
                    aux = (Producto) f.leerObjeto();
                }
            
            f.close();
        %>
        <%=respuesta%>
       </table>
    </body>
</html>

