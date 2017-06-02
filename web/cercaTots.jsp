<%-- 
    Document   : cercaTots
    Created on : 01-jun-2017, 16:04:07
    Author     : ALUMNEDAM
--%>


<%@page import="control.GestioLlibres"%>
<%@page import="java.util.List"%>
<%@page import="model.Llibre"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%! List<Llibre> llibres ; %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Llibres llibreria</title>
    </head>
    <body>
        <%@ include file="myHeader.html" %>

        <form action="GestioLlibres?accio=cercat" method="post">            

            <center><b>Cerca de tots els llibres:</b></center>
            <br><br>
            <%
            List<Llibre>llibres=null;
            for (Llibre l : llibres) {
            %>
            <table cellspacing="2" cellpadding="2" border="0" align="center">
                <tr>
                    <td colspan="2" align="center"><h4>Dades del llibre</h4></td>
                </tr>                
                <tr>
                    <td align="right">ISBN:</td>
                    <td><input type="Text" value="<%=l.getIsbn()%>"></td>
                </tr>  
                <tr>
                    <td align="right">Títol:</td>
                    <td><input type="Text" value="<%=l.getTitol()%>"></td>
                </tr>
                <tr>
                    <td align="right">Autor:</td>
                    <td><input type="Text" value="<%=l.getAutor()%>"></td>
                </tr>
                <tr>
                    <td align="right">Editorial:</td>
                    <td><input type="Text" value="<%=l.getEditorial()%>"></td>
                </tr>               
                <tr>
                    <td align="right">Any edició:</td>
                    <td><input type="Text" value="<%=l.getAnyEdicio()%>"></td>
                </tr>
                <tr>
                    <td align="right">Estoc:</td>
                    <td><input type="Text" value="<%=l.getEstoc()%>"></td>
                </tr>
                <tr>
                   <td colspan="2" align="center"><input type="Submit" value="Cerca"></td>
                </tr> 

            </table> 
            <%}%>
              

            <% String resposta = (String) request.getAttribute("cercatTots");%>
            <a ><%=(resposta == null) ? "" : resposta%> </a>

        </form>
            
        <br>
        <br>
        <a href='index.jsp'>TORNAR</a>
    </body>
    <a  href='index.jsp'>Tornar</a><br><br>
</html>
