<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="zh">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body class="grid justify-center bg-gray-50/75 p-8">
<div class="grid gap-3 p-6 shadow-lg bg-white rounded-lg">
    <div class="text-2xl font-bold">登录</div>
    <form method="post" action="${pageContext.request.contextPath}/user-login" class="grid gap-3" onsubmit="submitFunction(event)">
        <label>
            <input type="text" name="username" class="border border-grey-500 px-2 py-1 rounded-lg shadow-lg"
                   placeholder="请输入用户名">
        </label>
        <label>
            <input type="password" name="password" class="border border-grey-500 px-2 py-1 rounded-lg shadow-lg"
                   placeholder="请输入密码">
        </label>
        <button type="submit" class="transition bg-blue-400 hover:bg-blue-500 shadow-lg rounded-lg px-2 py-1">
            登录
        </button>
    </form>
</div>
</body>
<script src="https://cdn.tailwindcss.com"></script>
<script type="application/javascript">
    function submitFunction(event) {
        event.preventDefault();
        const username = document.querySelector('input[name="username"]').value;
        const password = document.querySelector('input[name="password"]').value;
        if (username === '' || username == null) {
            alert('请输入用户名');
            return;
        }
        if (password === '' || password == null) {
            alert('请输入密码');
            return;
        }
        document.querySelector('form').submit();
    }
</script>
</html>