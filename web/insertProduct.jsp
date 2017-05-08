<%-- 
    Document   : insertProduct
    Created on : May 4, 2017, 12:37:27 PM
    Author     : Gonzalo Pulido Mendoza
--%>

<%@page import="ikea.Fichero"%>
<%@page import="java.io.*"%>
<%@page import="ikea.Producto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        <title>Inserta Producto</title>
    </head>
    <%
            
            String nombre=request.getParameter("nombre");
            String descripcion=request.getParameter("descripcion");
            Double precio;
            int id;
            String respuesta;
            
            
            try{
                Fichero f = new Fichero("almacen.bin","ab");
                id = Integer.parseUnsignedInt(request.getParameter("id"));
                precio = Double.parseDouble(request.getParameter("precio"));
                if(nombre==null 
                        || descripcion==null 
                        || request.getParameter("id")==null
                        || request.getParameter("precio")==null)
                {
                    respuesta="Alguno de los campos quedó sin rellenar";
                }
                else{
                    f.escribirObjeto(new Producto(id,nombre,descripcion,precio));
                    respuesta="Se insertó con éxito";
                    
                }
                f.close();
            }catch(NumberFormatException nfe){
                respuesta="Error: Los campos están vacíos";
            }
            
            
        %>
    <body>
        <header>
            <%@include file="html/cabecera.html"%>
        </header>
        <section>
        <h2>INSERTA PRODUCTO</h2>
        <%@include file="html/inicio.html"%>
        <form action="insertProduct.jsp" method="POST">
         <table>
           <div id="formu">  
            <tr>
                <th>Id:</th>
                <td><input type="number" name="id"></td>
                
            </tr>
            <tr>
                <th>Nombre:</th>
                <td><input type="text" name="nombre"></td>
            </tr>
            <tr>
                <th>Descripción:</th>
                <td><textarea name="descripcion"></textarea></td>
            </tr>
            <tr>
                <th>Precio:</th>
                <td><input type="number" name="precio"></td>
            </tr>
            <tr>
                <td><input type="submit" value="Enviar"></td>
                <td><input type="reset" value="Reset"></td>
            </tr>
           </div>
         </table>  
        </form>
        <p><%=respuesta%></p>
        </section>
    </body>
</html>
