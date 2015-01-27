<%-- 
    Document   : Lab2_FormResult
    Created on : Jan 27, 2015, 3:05:50 PM
    Author     : owner
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Class 3 Lab 2</title>
    </head>
    <body>
        <h2>Class 3 Lab 2</h2>
        
        <form id="form1" name="form1" method="POST" action='<%= request.getContextPath() + "/rectangleCalcControl" %>'>
            <label for="length">Enter a length</label>
            <input id="length" name="length" type="text" value="" />
            <br />
            <label for="width">Enter a width</label>
            <input id="width" name="width" type="text" value="" />
            
            <input type="submit" name="submit" id="submit" value="Calculate" />           
        </form>
        <br />
        <br />
        <% 
            Object area = request.getAttribute("area");
            String areaResult = "";            
            
            if (area == null) {
                out.println("The area is null");
            } else {
                areaResult = (String)area; 
            }
            
            out.println("<br />" + areaResult);
        %>    
            
    </body>
</html>
