<%-- 
    Document   : Lab1_Results
    Created on : Jan 27, 2015, 1:38:13 PM
    Author     : jkramer26
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 1 Result</title>
        <link href="<%= request.getContextPath() %>/bootstrap-3.3.2-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="<%= request.getContextPath() %>/bootstrap-3.3.2-dist/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <h1>Lab 1 Result Page</h1>

            <% 
                Object area = request.getAttribute("area");
                String areaResult = "";            

                if (area == null) {
                    out.println("The area is null");
                } else {
                    areaResult = (String)area; 
                }
                //out.println("<br />" + areaResult);
                //out.println("<br />" + areaResult);
            %>
            <table class="table table-bordered">
                <tr>
                    <th>Col 1</th>
                    <th>Col 2</th>
                </tr>
                <tr>
                    <td>Result below</td>
                    <td><%= areaResult %></td>
                </tr>
            </table>
        </div>    
    </body>
</html>
