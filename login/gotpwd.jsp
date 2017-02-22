<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>
<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
Invalid information<br/><br/><br/>
<a href="retr.jsp">Try again</a>
<%} else {
%>
<%
   Date date = new Date();
   // out.print( "<h2 align=\"center\">" +date.toString()+"</h2>");
   out.print( date.toString() + "<br/><br/>" ); 
%>
Welcome <%=session.getAttribute("fname")%> with User Name:<%=session.getAttribute("userid")%>
<br/>
Your password is: <%=session.getAttribute("pwd")%>
<br/><br/>
<a href='index.jsp'>Login Here</a>
<%
    }
%>


