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
        <%
            GestioLlibres g = new GestioLlibres();
            List<Llibre> llibres = g.cercarTots();
            
            if(llibres != null){
            for(Llibre i : llibres){
                System.out.println("ISBN: " + i.getIsbn() + "\n"
                        + "Titol: " + i.getTitol() + "\n"
                        + "Autor: " + i.getAutor() + "\n"
                        + "Editorial: " + i.getEditorial() + "\n"
                        + "Any edició: " + i.getAnyEdicio() + "\n"
                        + "Estoc: " + i.getEstoc());
            }
            }else{
                System.out.println("NANANA");
            }
        %>
    </body>
    <a  href='index.jsp'>Tornar</a><br><br>
</html>
