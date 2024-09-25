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
 * 计算平方的控制器
 * <p>
 * 在页面上显示1-9共9个链接，单击每个链接，能够在另一个页面中打印出该数字的平方。
 *
 * @since v1.0.0
 * @version v1.0.0
 * @author xiaolfeng
 */
@WebServlet(name = "firstCalculateTheSquaredController", value = "/first-calculate-the-squared")
public class FirstCalculateTheSquaredController extends HttpServlet {

    @Override
    protected void doGet(@NotNull HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Map<String, String[]> param = req.getParameterMap();
        resp.setContentType("text/html;charset=UTF-8");
        if (param.containsKey("number")) {
            int num = Integer.parseInt(param.get("number")[0]);
            int squared = num * num;
            resp.getWriter().println("平方 " + num + " 是 " + squared);
        } else {
            resp.getWriter().println("请输入一个数字");
        }
    }
}
