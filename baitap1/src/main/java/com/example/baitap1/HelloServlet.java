package com.example.baitap1;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import java.io.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet("/Discount")
public class HelloServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String description = req.getParameter("description");
        String price = req.getParameter("price");
        String discount = req.getParameter("discount");

        double discountAmount = Double.parseDouble(price)*Double.parseDouble(discount)*0.01;
        double newPrice = Double.parseDouble(price) - discountAmount;
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();
        out.println("<html><body>");
        out.println("<h1>Discount Calculator</h1>");
        out.println("<div>Description "+description+"</div>");
        out.println("<div>Price "+price+"</div>");
        out.println("<div>Discount "+discount+"%</div>");
        out.println("<div>Discount Amount "+discountAmount+"</div>");
        out.println("<div>New Price "+newPrice+"</div>");
        out.println("</body></html>");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
    public void destroy() {
    }
}