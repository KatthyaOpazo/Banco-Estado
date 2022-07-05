<%-- 
    Document   : procesos
    Created on : 18-oct-2021, 22:21:34
    Author     : anais
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultado Credito Hipotecario</title>

         <%--Acceso a el archivo css (en donde esta todo el contenido visual 
        de la página)--%>
        <link href="css/estilosProcesos.css" rel="stylesheet"/>
        <%--Archivo que visualiza el icono de la pagina web--%>
        <link href="ico/icobancoestado.ico" rel="shortcut icon"/>
    </head>
    <body>
        <%
            //En esta porcion de codigo se definiran las variables y se traeran los datos. 
            String seguroDes, seguroFue;
            double totalDes = 0, totalI = 0, totalFue = 0;
            int monto, anio;
            monto = Integer.parseInt(request.getParameter("monto"));
            seguroDes = request.getParameter("grupo1");
            seguroFue = request.getParameter("grupo2");
            anio = Integer.parseInt(request.getParameter("ncuota"));

            // El if esta evaluando si en el caso de que el monto ingresado sea menor que 0 o que el usuario no seleccione alguna opcion en los seguros, de detonara un error. 
            if (monto < 0 || seguroDes == null || seguroFue == null) {
        %> 

        <%--Mensaje de error para el usuario--%>
        <img  id="Volverimg" src="ico/iconoVolver.jpg" height="40" width="45">
        <p id="mensajetxt">"El monto no puede ser menor a 1 y debe escojer una opcion en los seguros."</p> <br> 
        <a id="mensajeVolver" href="inicio.jsp">Volver</a> 

        <%-- En caso de no encontrar ningun error, se continuara evaluando las estructuras en donde si la condicion se cumple se realizaran los operaciones. --%>
        <%-- Intereses --%>
        <%
        } else {

            monto = monto * 30000;

            //Intereses
            if (anio < 5) {

                totalI = monto * 10 / 100;

            } else if (anio > 5 || anio < 10) {
                totalI = monto * 15 / 100;
            } else {
                totalI = monto * 25 / 100;
            }

            //seguro desgravamen y contra fuego

        %>
        <%-- Seguros --%>
        <%            if (seguroDes.equals("Si")) {

                totalDes = monto * 15 / 100;
            }
            if (seguroFue.equals("Si")) {
                totalFue = monto * 10 / 100;
            }

        %>

        <%            String nombre;
            nombre = request.getParameter("nombre");
        %>

        <br><br><br><br>
        <h1> Estimado(a) <%=nombre%> </h1>
        <hr>
        <p>El detalle de su cotizacion para un credito hipotecario es el siguiente:</p>

        <table id="tabla" border="1">
            <thead>
                <tr>
                    <th>Monto inicial(UF)</th>
                    <th>Monto inicial(Pesos)</th>
                    <th>Interes</th>
                    <th>Seguro Desgravamen</th>
                    <th>Seguros Contra incendio</th>
                    <th>Total a Pagar</th>
                    <th>Cuota mensual</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><%= monto / 30000%></td>
                    <td>$<%= monto%></td>
                    <td>$<%= totalI%></td>
                    <td>$<%= totalDes%></td>
                    <td>$<%= totalFue%></td>
                    <td>$<%= monto + totalI + totalDes + totalFue%></td>
                    <td>$<%=(monto + totalI + totalDes + totalFue) / 12%> </td>
                </tr>
            </tbody>
        </table>

        <%--Acceso para volver a la interfaz anterior(Formulario de ingreso de 
        datos para un crédito hipotecario)--%>
        <img  src="ico/iconoVolver.jpg" height="30" width="35"><br><br>
        <a id="volvertxt" href="inicio.jsp" >Volver a ingresar datos</a>

        <%}%>


    </body>
</html>
