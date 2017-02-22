<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<a href="index.jsp">Please Login</a>
<%} else {
%>
<%
   Date date = new Date();
   // out.print( "<h2 align=\"center\">" +date.toString()+"</h2>");
   out.print( date.toString() + "<br/><br/>" ); 
%>
Welcome <%=session.getAttribute("fname")%> with User Name:<%=session.getAttribute("userid")%>
<br/><br/>
<a href='logout.jsp'>Log out</a>
<%
    }
%>


