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
        <link href="<%= request.getContextPath()%>/bootstrap-3.3.2-dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="<%= request.getContextPath()%>/bootstrap-3.3.2-dist/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <form class="form-horizontal" id="form1" name="form1" method="POST" action="../rectangleCalc" >
                <fieldset>
                    <legend>Lab 1 Form</legend>
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
            
        </div>
    </body>
</html>
