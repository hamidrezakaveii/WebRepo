<%-- 
    Document   : expressionsSimples
    Created on : Jul 5, 2018, 10:00:38 PM
    Author     : HAMIDREZA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1">
            <thead>
                <tr>
                    <th colspan="2">Simple expression</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>        
                        \${3+2-1}
                    </td>
                    <td>        
                        ${3+2-1}
                    </td>
                </tr>
                <tr>
                    <td>        
                        \${"1"+2}
                    </td>
                    <td>        
                        ${"1"+2}
                    </td>
                </tr>
                <tr>
                    <td>        
                        \${(1<2) && (4<3)}
                    </td>
                    <td>        
                        ${(1<2) && (4<3)}
                    </td>
                </tr>
                <tr>
                    <td>        
                        \${"test" == "test"}
                    </td>
                    <td>        
                        ${"test" == "test"}
                    </td>
                </tr>
                <tr>
                    <td>        
                        \${"test" == "Test"}
                    </td>
                    <td>        
                        ${"test" == "Test"}
                    </td>
                </tr>
                <tr>
                    <td>        
                        \${'test' == 'Test'}
                    </td>
                    <td>        
                        ${'test' == 'Test'}
                    </td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
