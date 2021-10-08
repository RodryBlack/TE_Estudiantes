<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Estudiante"%>
<%
    ArrayList<Estudiante> lista=(ArrayList<Estudiante>)session.getAttribute("listaes");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <label>
            PRIMER PARCIAL TEM <br>Nombre : Rodrigo Machicado Rojas<br>C.I. : 6951098 L.P.
        </label>
        <h1><center>REGISTRO OLIMPIADAS DE PROGRAMACION</center></h1>
        
        <a href="Controlador?op=nuevo">Nuevo</a>
        
        <table border="1">
            <tr>
                <th>ID</th>
                <th>Nombres</th>
                <th>Apellidos</th>
                <th>Categoria</th>
                <th>Confirmado</th>
                <th>Fecha de Inscripcion</th>
                <th></th>
                <th></th>
            </tr>
            <%
                if(lista!=null){
                    for(Estudiante i:lista){
                        
                 
            %>
            <tr>
                <td><%=i.getId()%><%=i.getValor()%></td>
                <td><%=i.getNombres()%></td>
                <td><%=i.getApellidos()%></td>
                <td><%=i.getCategoria()%></td>
                <td><%
                    if(i.getValor().equals("si")){
                        
                    %>
                    <input type="checkbox" checked>
                    <%
                        }
                        else{
                    %>        
                    
                    <input type="checkbox" >

                    <%
                        }
                    %>
                    </td>
                <td><%=i.getFecha()%></td>
                <td><a href="Controlador?op=editar&id=<%=i.getId()%>">Editar</a></td>
                <td><a href="Controlador?op=eliminar&id=<%=i.getId()%>"
                       onclick="return confirm('Esta seguro que desea eliminar')">Eliminar</a></td>
                
            </tr>    
            
            <%
                   }
                }
            %>
        </table>
    </body>
</html>
