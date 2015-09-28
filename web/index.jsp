<%-- 
    Document   : index
    Created on : Sep 25, 2015, 4:01:40 PM
    Author     : Wade
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Calculator</title>
        <link rel="stylesheet" type="text/css" href="CSS.css" />
    </head>
    <body>
        <div id="Appborder">
        <h1>Salary Calculator</h1>
        
        <form name="Salary Calculator" action="results.jsp" method="post">
            <table>
                <tbody>
                    <tr>
                        <td> Hours Worked:</td>
                        <td><input type="text" name="hours" value="" size="50"  required></td> 
                    </tr>
                    
                     <tr>
                        <td> Hourly Pay:</td>
                        <td><input type="text" name="HrRate" value="" size="50" required></td> 
                    </tr>
                   
                    <tr>
                        <td> Pre-Tax Deduct:</td>
                        <td><input type="text" name="Pretax" value="" size="50" required></td> 
                    </tr>
                    
                     <tr>
                        <td> Post-Tax Deduct:</td>
                        <td><input type="text" name="posttax" value="" size="50" required></td> 
                    </tr>
                </tbody>
                </table>
            
            <input type="reset" value="clear" id="clear">
            <input type="submit" value="submit" id="submit">
            
        </form>
        </div>
    </body> 
   
</html>
