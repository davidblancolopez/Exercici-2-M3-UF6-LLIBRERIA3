<%-- 
    Document   : cercaTots
    Created on : 01-jun-2017, 16:04:07
    Author     : ALUMNEDAM
--%>


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
        
        
        <table cellspacing="2" cellpadding="2" border="0" align="center">
                <tr>
                    <td align = "center">ISBN:</td>
                    
                </tr>
                <tr>
                    <td align="right">Títol:</td>
                    
                </tr>
                <tr>
                    <td align="right">Autor:</td>
                    
                </tr>
                <tr>
                    <td align="right">Editorial:</td>
                    
                </tr>               
                <tr>
                    <td align="right">Any edició:</td>
                    
                </tr>
                <tr>
                    <td align="right">Estoc:</td>
                    
                </tr>         

            </table> 
    </body>
</html>
