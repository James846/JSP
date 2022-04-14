package Servlet;
import Data.Information;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.*;
import jakarta.servlet.http.HttpServlet;

@WebServlet(name = "RegisterServlet", value = "/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        PreparedStatement preparedStatement;
        String ID=request.getParameter("RegisterID");
        String Password=request.getParameter("RegisterPassword");
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/regist"; //数据库名
            String username = "root";  //数据库用户名
            String password = "jimmy1016";  //数据库用户密码
            Connection conn = DriverManager.getConnection(url, username, password);  //连接状态
            String sql="insert into people values(?,?);";
            preparedStatement=conn.prepareStatement(sql);
            preparedStatement.setObject(1,ID);
            preparedStatement.setObject(2,Password);
            preparedStatement.executeUpdate();
            preparedStatement.close();
            conn.close();
            RequestDispatcher dis= request.getRequestDispatcher("Login.jsp");
            dis.forward(request,response);
        }
        catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
