<%-- 
    Document   : Lab1_Form
    Created on : Jan 27, 2015, 1:35:46 PM
    Author     : jkramer26
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 1 Form</title>
    </head>
    <body>
        <h2>Lab 1 Form </h2>
        
        <form id="form1" name="form1" method="POST" action="../rectangleCalc">
            <input id="length" name="length" type="text" value="" />
            
            <input id="width" name="width" type="text" value="" />
            
            <input type="submit" name="submit" id="submit" value="Calculate" />           
        </form>
    </body>
</html>
