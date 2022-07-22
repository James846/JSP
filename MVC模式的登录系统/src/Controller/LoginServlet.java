package Controller;

import Model.Information;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;

import static java.lang.System.out;

@WebServlet(name = "LoginServlet", value = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Information information=new Information();
        String Phone=request.getParameter("Phone");
        String Password=request.getParameter("Password");
        PreparedStatement preparedStatement;
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/user"; //数据库名
            String username = "root";  //数据库用户名
            String password = "jimmy1016";  //数据库用户密码
            Connection conn = DriverManager.getConnection(url, username, password);  //连接状态
            String sql="SELECT Name FROM register WHERE Phone=? and Password=?;";
            preparedStatement=conn.prepareStatement(sql);
            preparedStatement.setObject(1,Phone);
            preparedStatement.setObject(2,Password);
            rs=preparedStatement.executeQuery();
            if(rs.next()){
                information.setName(rs.getString(1));
                information.setPassword(Password);
                request.setAttribute("selectPeople",information);
                RequestDispatcher dis= request.getRequestDispatcher("LoginSuccess.jsp");
                dis.forward(request,response);
            }
            else{
                out.print("查无此数据！");
                RequestDispatcher dis= request.getRequestDispatcher("Login.jsp");
                dis.forward(request,response);
            }
            rs.close();
            preparedStatement.close();
            conn.close();
        }catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}