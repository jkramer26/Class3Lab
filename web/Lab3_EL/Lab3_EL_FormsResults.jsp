<%-- 
    Document   : Lab3_EL_FormsResults
    Created on : Jan 29, 2015, 3:14:41 PM
    Author     : owner
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 3 with EL</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
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

            <h1 hidden><span class='label label-default'>${rectangleArea} is the area of the rectangle</span></h1>

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
            <h1 hidden><span class='label label-default'>${circleArea} is the area of the circle</span></h1>

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
            <h1 hidden><span class='label label-default'>${triangleArea} is the area of the triangle</span></h1>
            
        </div> 
    </body>
</html>
