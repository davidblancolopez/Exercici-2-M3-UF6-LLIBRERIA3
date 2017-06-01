<%-- 
    Document   : eliminar
    Created on : 01-jun-2017, 17:23:28
    Author     : ALUMNEDAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar llibre</title>
    </head>
    <body>
        <%@ include file="myHeader.html" %>

        <form action="GestioLlibres?accio=eliminar" method="post">            

            <center><b>Posa el ISBN del llibre que vols eliminar</b></center>
            <br><br>
            <table cellspacing="2" cellpadding="2" border="0" align="center">
                <tr>
                    <td align="right">ISBN:</td>
                    <td><input type="Text" name="isbn_" size="13"></td>
                </tr>
               
                <tr>
                   <td colspan="2" align="center"><input type="Submit" value="Afegir"></td>
                </tr>                

            </table>   

            <% String resposta = (String) request.getAttribute("eliminat");%>
             <a ><%=(resposta == null) ? "" : resposta%> </a>

        </form>
<a  href='index.jsp'>Tornar</a><br><br>

    </body>
</html>
