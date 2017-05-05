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
        <link href="../css/style.css" rel="stylesheet" type="text/css"/>
        <title>Lista producto</title>
    </head>
    <body>
        <header>
            <%@include file="../html/cabecera.html"%>
        </header>
        <h1>Lista producto</h1>
        <%@include file="../html/inicio.html" %>
        <table>
            <tr>
                <th>Id</th>
                <th>Nombre</th>
                <th>Descripción</th>
                <th>Precio</th>
            </tr>
        <%
            ObjectInputStream ois;
            String respuesta="";
                Fichero f = new Fichero("almacen.bin","rb");
                Producto aux = (Producto) f.leerObjeto();
                while(aux!=null){
                    
                    respuesta+="<tr>\n"
                            + "<td>"+aux.getId()+"</td>\n"
                            + "<td>"+aux.getNombre()+"<td>\n"
                            + "<td>"+aux.getDescripcion()+"</td>\n"
                            + "<td>"+aux.getPrecio()+"</td>\n"
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

