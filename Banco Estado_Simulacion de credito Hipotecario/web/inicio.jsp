<%-- 
    Document   : inicio
    Created on : 17-oct-2021, 20:18:23
    Author     : anais
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Credito Hipotecario</title>
        <link href="procesa.jsp">
        
        <%--Acceso a el archivo css (en donde esta todo el contenido visual 
        de la página)--%>
        <link href="css/estilos.css" rel="stylesheet"/>
        <%--Archivo que visualiza el icono de la pagina web--%>
        <link href="ico/icobancoestado.ico" rel="shortcut icon"/>

    </head>
    <body>

        <a href="https://www.uf-hoy.com/" target="_black"><img id="UF" src="ico/icono uf.png" height="50" width="50"></a>
        <p id="convertUF">Ingrese a este icono para convertir el monto a solicitar en UF</p>

        <form action="procesos.jsp" method="POST"><br>

            <%-- Dentro del formulario se encuentran todas las estructuras que permiten ingresar y capturar los datos. --%>
            <legend>Cotiza tu Crédito Hipotecario aquí</legend>
            <hr>
            <label class="nombre1">Nombre:</label>
            <input id="txtnombre" type="text" id="nombre" name="nombre" placeholder="Ingrese su nombre" required> <br><!-- el required indica que el campo no puede quedar vacio-->

            <label class="monto2">Monto del credito:</label>
            <input id="txtmonto" type="text" id="monto" name="monto" placeholder="Ingrese un monto en UF" required> 

            <hr>

            <label class="cantyears">Cantidad de Cuotas(Años):  </label>

            <select id="selectcuota" name="ncuota" required
                    <optgroup label="Seleccione numero de cuotas">
                    <option value="1" >1</option>
                    <option value="2" >2</option>
                    <option value="3" >3</option>
                    <option value="4" >4</option>
                    <option value="5" >5</option>
                    <option value="6" >6</option>
                    <option value="7" >7</option>
                    <option value="8" >8</option>
                    <option value="9" >9</option>
                    <option value="10" >10</option>
                    <option value="11" >11</option>
                    <option value="12" >12</option>
                    <option value="13" >13</option>
                    <option value="14" >14</option>
                    <option value="15" >15</option>
                    <option value="16" >16</option>
                    <option value="17" >17</option>
                    <option value="18" >18</option>
                    <option value="19" >19</option>
                    <option value="20" >20</option>
                    <option value="21" >21</option>
                    <option value="22" >22</option>
                    <option value="23" >23</option>
                    <option value="24" >24</option>
                    <option value="25" >25</option>
                    <option value="26" >26</option>
                    <option value="27" >27</option>
                    <option value="28" >28</option>
                    <option value="29" >29</option>
                    <option value="30" >30</option>
            </select>

            <hr>
            <fieldset id="S1" required name="seguro1"><legend>Seguro Desgravamen</legend><br>
                <label><input type="radio" name="grupo1" value="Si" />
                    SI</label>
                <label><input type="radio" name="grupo1" value="No" />
                    NO</label>
            </fieldset>

            <fieldset id="S2" required name="seguro2"><legend>Seguro Contra Incendio</legend><br>
                <label><input type="radio" name="grupo2" value="Si"  />
                    SI</label>
                <label><input type="radio" name="grupo2" value="No" />
                    NO</label>
            </fieldset>

            <input id="btncotizar" type="submit" value="Cotizar">            
        </form>


    </body>
</html>
