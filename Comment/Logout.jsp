<%
session.removeAttribute("user");
session.invalidate();
%>
<jsp:forward page="home.html" />