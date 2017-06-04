<%-- 
    Document   : cerca
    Created on : 01-jun-2017, 20:26:51
    Author     : ALUMNEDAM
--%>

<%@page import="model.Llibre"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cercar llibre per ISBN</title>
    </head>
    <body bgcolor="#FFFF99" >

        <% Llibre llibre = (Llibre) request.getAttribute("cercat");%>
        <%@ include file="myHeader.html" %>

        <form action="GestioLlibres?accio=cercar" method="post">            

            <center><b>Realitza la cerca per ISBN:</b></center>
            <br><br>
            <table cellspacing="2" cellpadding="2" border="0" align="center">

                <tr>
                    <td align="right">ISBN:</td>
                    <td><input type="Text" name="isbn_" size="13" value="<%=llibre == null ? "" : llibre.getIsbn()%>"></td>
                    
                </tr>
                <tr>
                    <td align="right">Títol:</td>
                    <td><input type="Text" name="titol_" size="30" value="<%=llibre == null ? "" : llibre.getTitol()%>"></td>

                </tr>
                <tr>
                    <td align="right">Autor:</td>
                    <td><input type="Text" name="autor_" size="30" value="<%=llibre == null ? "" : llibre.getAutor()%>"></td>
 
                </tr>
                <tr>
                    <td align="right">Editorial:</td>
                    <td><input type="Text" name="editorial_" size="30" value="<%=llibre == null ? "" : llibre.getEditorial()%>"></td>
                    
                </tr>
                <tr>
                    <td align="right">Any edició:</td>
                    <td><input type="Text" name="anyEdicio_" size="30" value="<%=llibre == null ? "" : llibre.getAnyEdicio()%>"></td>
                
                </tr>
                <tr>
                    <td align="right">Estoc:</td>
                    <td><input type="Text" name="estoc_" size="30" value="<%=llibre == null ? "" : llibre.getEstoc()%>"></td>

                </tr>
                
               
                <tr>
                   <td colspan="2" align="center"><input type="Submit" value="Cercar"></td>
                </tr>           

            </table>   



        </form>
        <br>
        <br>
        <a href="index.jsp">Tornar</a>


    </body>
</html>