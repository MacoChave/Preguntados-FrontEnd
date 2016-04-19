<%
    HttpSession sesion=request.getSession();
    session.removeAttribute("user");
    session.invalidate();
    response.sendRedirect("index.jsp");
%>