package Controller;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.*;

import static java.lang.System.out;

@WebServlet(name = "RegisterServlet", value = "/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PreparedStatement preparedStatement;
        String Phone=request.getParameter("Phone");
        String Name=request.getParameter("Name");
        String Password=request.getParameter("Password");
        String Email=request.getParameter("Email");
        if(Phone.length()!=11){//电话号码小于不等于11位
            RequestDispatcher dis= request.getRequestDispatcher("RegisterFailed.jsp");
            out.print("手机号位数不正确！");
            dis.forward(request,response);
        }
        else{
            try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                String url = "jdbc:mysql://localhost:3306/user"; //数据库名
                String username = "root";  //数据库用户名
                String password = "jimmy1016";  //数据库用户密码
                Connection conn = DriverManager.getConnection(url, username, password);  //连接状态
                String sql="insert into register values(?,?,?,?);";//使用预处理添加数据
                preparedStatement=conn.prepareStatement(sql);
                preparedStatement.setObject(1,Phone);
                preparedStatement.setObject(2,Name);
                preparedStatement.setObject(3,Password);
                preparedStatement.setObject(4,Email);
                preparedStatement.executeUpdate();
                preparedStatement.close();
                conn.close();
            }
            catch (ClassNotFoundException | SQLException e) {//注册失败跳转
                RequestDispatcher dis= request.getRequestDispatcher("RegisterFailed.jsp");
                dis.forward(request,response);
            }
            RequestDispatcher dis= request.getRequestDispatcher("RegisterSuccess.jsp");
            dis.forward(request,response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
