<%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("uname");    
    String email = request.getParameter("email");
    String bcity = request.getParameter("bcity");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ltest",
            "root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from members where uname='" + userid + "' and email='" + email + "' and bcity='" + bcity + "'");
    if (rs.next()) {
        //out.println(rs);
        session.setAttribute("userid", userid);
        session.setAttribute("fname", rs.getString("first_name"));
        session.setAttribute("pwd", rs.getString("pass"));
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        out.println("Your password is: " + rs.getString("pass"));
        response.sendRedirect("gotpwd.jsp");
    } else {
        out.println("!! Invalid information !! <br/><br/> <a href='retr.jsp'>Try again</a>");
    }
%>

