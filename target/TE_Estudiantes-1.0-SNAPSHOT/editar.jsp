<%@page import="com.emergentes.modelo.Estudiante"%>
<%
    Estudiante item= (Estudiante)request.getAttribute("miEstudiante");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><%=(item.getId())==0? "Nuevo Registro" : "Editar Registro"%></h1>
        <form action="Controlador" method="post">
            <input type="hidden" name="id" value="<%=item.getId()%>">
            
            <table>
                <tr>
                    <td>Nombres</td>
                    <td><input type="text" name="nombres" value="<%=item.getNombres()%>"></td>
                </tr>
                
                <tr>
                    <td>Apellidos</td>
                    <td><input type="text" name="apellidos" value="<%=item.getApellidos()%>"></td>
                </tr>
                    
                <tr>
                    <td>Categoria</td>
                    <td><input type="text" name="categoria" value="<%=item.getCategoria()%>"></td>
                </tr>
                
                <tr>
                    <td>Confirmado</td>
                    <td> <input type="text" name="valor"  required pattern="[s,i,n,o]{2}" value="<%=item.getValor()%>" > Escriba la palabra  si/no Solo en minusculas</td>
                    
                </tr>
                    
                <tr>
                    <td>Fecha</td>
                    <td><input type="text" name="fecha" value="<%=item.getFecha()%>"></td>
                </tr>
                    
                <tr>
                    <td></td>
                    <td><input type="submit" valur="Enviar"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
