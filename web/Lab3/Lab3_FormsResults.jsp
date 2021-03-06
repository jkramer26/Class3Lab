<%-- 
    Document   : Lab3_FormsResults
    Created on : Jan 27, 2015, 3:23:26 PM
    Author     : owner
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Class 3 Lab 3</title>
        <link href="<%= request.getContextPath() %>/bootstrap-3.3.2-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="<%= request.getContextPath() %>/bootstrap-3.3.2-dist/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <h1>Class 3 Lab 3</h1>

            <form class="form-horizontal" id="rectangleForm" name="rectangleForm" method="POST" action='<%= request.getContextPath() + "/CalcControl?calcType=rectangle" %>'>
                <fieldset>
                    <legend>Calculate Area of a Rectangle</legend>
                </fieldset>
                <div class="form-group">
                    <label for="length" class="col-sm-2 control-label">Enter a length</label>
                    <div class="col-sm-3">
                        <input class="form-control" id="length" name="length" type="text" value="" />
                    </div>
                </div>
                <div class="form-group">
                    <label for="width" class="col-sm-2 control-label">Enter a width</label>
                    <div class="col-sm-3">
                        <input class="form-control" id="width" name="width" type="text" value="" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <input class="btn btn-default" type="submit" name="submit" id="submit" value="Calculate" />           
                    </div>
                </div>          
            </form>
            <br />
            <br />
            <% 
                Object rectangleArea = request.getAttribute("rectangleArea");
                String rectangleAreaResult = "";            

                if (rectangleArea == null) {
                    out.println(" ");
                } else {
                    rectangleAreaResult = (String)rectangleArea; 
                    out.println("<h1><span class='label label-default'>" + rectangleAreaResult + " is the area of the rectangle</span></h1>");
                }

                
                //out.println("<a href='Lab3/Lab3_FormsResults.jsp'>Calculate Again</a>");
            %>
            

            <br />
            <br />
            <form class="form-horizontal" id="circleForm" name="circleForm" method="POST" action='<%= request.getContextPath() + "/CalcControl?calcType=circle" %>'>
                <fieldset>
                    <legend>Calculate Area of a Circle</legend>
                </fieldset>
                <div class="form-group">
                    <label for="radius" class="col-sm-2 control-label">Enter a radius</label>
                    <div class="col-sm-3">
                        <input class="form-control" id="radius" name="radius" type="text" value="" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <input class="btn btn-default" type="submit" name="submit" id="submit" value="Calculate" />           
                    </div>
                </div> 
            </form>
            <br />
            <br />
            <% 
                Object circleArea = request.getAttribute("circleArea");
                String circleAreaResult = "";            

                if (circleArea == null) {
                    out.println(" ");
                } else {
                    circleAreaResult = (String)circleArea; 
                    out.println("<h1><span class='label label-default'>" + circleAreaResult + " is the area of the circle</span></h1>");
                }

                //out.println("<a href='Lab3_FormsResults.jsp'>Calculate Again</a>");
            %>
            

            <br />
            <br />
            <form class="form-horizontal" id="triangleForm" name="triangleForm" method="POST" action='<%= request.getContextPath() + "/CalcControl?calcType=triangle" %>'>
                <fieldset>
                    <legend>Calculate Area of a Triangle</legend>
                </fieldset>
                <div class="form-group">
                    <label for="height" class="col-sm-2 control-label">Enter a height: </label>
                    <div class="col-sm-3">
                        <input class="form-control" id="height" name="height" type="text" value="" />
                    </div>
                </div>
                <div class="form-group">
                    <label for="base" class="col-sm-2 control-label">Enter a base: </label>
                    <div class="col-sm-3">
                        <input class="form-control" id="base" name="base" type="text" value="" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <input class="btn btn-default" type="submit" name="submit" id="submit" value="Calculate" />           
                    </div>
                </div>           
            </form>
            <br />
            <br />
            <% 
                Object triangleArea = request.getAttribute("triangleArea");
                String triangleAreaResult = "";            

                if (triangleArea == null) {
                    out.println(" ");
                } else {
                    triangleAreaResult = (String)triangleArea; 
                    out.println("<h1><span class='label label-default'>" + triangleAreaResult + " is the area of the triangle</span></h1>");
                }
                
                //out.println("<a href='Lab3_FormsResults.jsp'>Calculate Again</a>");
            %>
            <!-- Could just out put the result here and just put the variable in between tags-->
            
        </div> 
    </body>
</html>
