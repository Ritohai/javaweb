package com.example.md4btss111;

import java.io.IOException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "customerServlet", value = "/customer-servlet")
public class CustomerServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Tạo danh sách khách hàng (giả sử đã có từ cơ sở dữ liệu hoặc nguồn dữ liệu khác)
        ArrayList<Customer> listCustomers = new ArrayList<>();
        listCustomers.add(new Customer("John Doe", "1990-05-20", "New York", "images/johndoe.jpg"));
        listCustomers.add(new Customer("Jane Smith", "1985-12-10", "Los Angeles", "images/janesmith.jpg"));
        listCustomers.add(new Customer("Mike Johnson", "1992-07-15", "Chicago", "images/mikejohnson.jpg"));

        // Đặt danh sách khách hàng vào thuộc tính của request
        request.setAttribute("listCustomers", listCustomers);

        // Chuyển hướng đến trang index.jsp
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }
}

