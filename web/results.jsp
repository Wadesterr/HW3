<%-- 
    Document   : results
    Created on : Sep 25, 2015, 4:21:43 PM
    Author     : Wade
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Results</title>
        <link rel="stylesheet" type="text/css" href="CSS.css" />
    </head>
    
    <% 
   int hoursWorked = Integer.parseInt(request.getParameter("hours"));
        int payRate = Integer.parseInt(request.getParameter("HrRate"));
        int preDeduct = Integer.parseInt(request.getParameter("Pretax"));
        int postDeduct = Integer.parseInt(request.getParameter("posttax"));
        double otHours = 0.0;
        double otPayrate = 0.0;
        double grossPay = 0.0;
        double taxAmount;
        double taxablePay;
        double postAmount;
        double netPay;
        
        if(hoursWorked > 40)
        {   otHours = hoursWorked - 40;
            otPayrate = payRate * 1.5;
            grossPay = otPayrate * otHours + 40 * payRate;
        }
        else
        {
            grossPay = hoursWorked * payRate;
        }   
        taxablePay = grossPay - preDeduct;
        
        if (taxablePay < 500)
        {
            taxAmount = taxablePay * 0.18;
        }
        else
        {
            taxAmount = taxablePay * 0.22;
        }
        
        postAmount = taxablePay - taxAmount;
        netPay = postAmount - postDeduct; 
    
  
    %>
    
    
   
    
    <body>
       
        <h1>Salary Info</h1>
        <div id="chartborder">
        <table border="1">
        
            <tbody>
            <tr>
                <td>Total Hours Worked:</td>
                <td><%=hoursWorked%></td>
            </tr>
            
            <tr>
            <td>Hourly Rate:</td>
            <td><%=payRate%></td>
            </tr>
                 
             <tr>
             <td># Hours Overtime:</td>
             <td><%=otHours%></td>
             </tr>
             
             <tr>
             <td>Overtime Hourly Rate:</td>
             <td><%=otPayrate%></td>
             </tr>
             
             <tr>      
            <td>Gross Pay:</td>
            <td><%=grossPay%></td>
             </tr>
            
               <tr>        
            <td>Pre-Tax Pay:</td>
            <td><%=taxablePay%></td>
               </tr>
             
            <tr>         
            <td>Pre-Tax Deduct:</td>
            <td><%=preDeduct%></td>
            
                              
             <tr>
                 <td>Tax Amount:</td>
                 <td><%=taxAmount%></td>
             </tr>
            
             <tr>
                 <td>Post-Tax Pay:</td>
                 <td><%=postAmount%></td>
             </tr>
            
             <tr>
                 <td>Post-Tax Deduct:</td>
                 <td><%=postDeduct%></td>
             </tr>
            
              <tr>
             <td>Net Pay:</td>  
             <td><%=netPay%></td>
             </tr>
            </tbody>
            
        </table>
       </div>
    </body>
</html>
