<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>纸币找零</title>
</head>
<body>
<div class="text-2xl font-bold">纸币找零计算</div>

<form method="get" action="${pageContext.request.contextPath}/banknotes.jsp" class="p-6">
    <label>
        <input type="text" name="inputAmount" class="border border-grey-500 px-2 py-1 rounded-lg shadow-lg" value="<%
        if (request.getParameter("inputAmount") != null) {
        out.println(request.getParameter("inputAmount"));
        } else {
        out.println(78);
        }
        %>" placeholder="请输入金额">
    </label>
    <button type="submit" class="transition bg-blue-400 hover:bg-blue-500 shadow-lg rounded-lg px-2 py-1">计算</button>
</form>

<%
    // 输入的金额
    int inputAmount = 78;

    if (request.getParameter("inputAmount") != null) {
        inputAmount = Integer.parseInt(request.getParameter("inputAmount"));
    }

    // 面额数组
    int[] bills = {50, 20, 10, 5, 1};
    int[] counts = new int[bills.length];

    // 计算每种面额纸币的数量
    for (int i = 0; i < bills.length; i++) {
        counts[i] = inputAmount / bills[i];
        inputAmount %= bills[i];
    }

    // 输出结果
%>

<h3>找零方案：</h3>
<ul class="p-8 grid gap-1">
    <%
        for (int i = 0; i < bills.length; i++) {
            if (counts[i] > 0) {
                // 输出每种面额和数量
                out.println("<li>" + bills[i] + "元: " + counts[i] + "张</li>");
            }
        }
    %>
</ul>

</body>
<script src="https://cdn.tailwindcss.com"></script>
</html>