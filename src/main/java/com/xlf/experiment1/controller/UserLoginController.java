package com.xlf.experiment1.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.jetbrains.annotations.NotNull;

import java.io.IOException;
import java.util.Map;

/**
 * 用户登录控制器
 * <p>
 * 用户登录控制器
 *
 * @author xiao_lfeng
 * @version v1.0.0
 * @since v1.0.0
 */
@WebServlet(name = "userLoginController", value = "/user-login")
public class UserLoginController extends HttpServlet {
    @Override
    protected void doPost(
            @NotNull HttpServletRequest req,
            @NotNull HttpServletResponse resp
    ) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        Map<String, String[]> param = req.getParameterMap();
        if (param.containsKey("username") && param.containsKey("password")) {
            String username = param.get("username")[0];
            String password = param.get("password")[0];
            if ("admin".equals(username) && "123456".equals(password)) {
                resp.getWriter().println("登录成功");
                resp.getWriter().println("欢迎您，" + username);
            } else {
                resp.getWriter().print("登录失败：");
                resp.getWriter().println("用户名或密码错误");
            }
        } else {
            resp.getWriter().println("请输入用户名和密码");
        }
    }
}
