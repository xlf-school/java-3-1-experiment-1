<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>使用 POST 方法读取数据</title>
</head>
<body>
<h1>使用 POST 方法读取数据</h1>
<ul>
    <li>
        <p>
            <b>站点名:</b>
            <%
                // 我的电脑是 macOS 默认使用 UTF-8 不需要转
                // String name = new String((request.getParameter("name")).getBytes(StandardCharsets.ISO_8859_1), StandardCharsets.UTF_8);
                String name = request.getParameter("name");
            %>
            <%=name%>
        </p>
    </li>
    <li>
        <p>
            <b>网址:</b>
            <%= request.getParameter("url")%>
        </p>
    </li>
</ul>
</body>
</html>
