package Controller;
import Model.Information;
import Model.Page;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;

import static java.lang.System.out;

@WebServlet(name = "SearchServlet", value = "/SearchServlet")
public class SearchServlet extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Statement statement;
        PreparedStatement preparedStatement;
        ResultSet resultSet;
        ArrayList<Information>allRegister;
        Page page=new Page();
        int pageCur;int startIndex;
        String pageCurl1=request.getParameter("pageCur");
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://localhost:3306/user"; //数据库名
            String username = "root";  //数据库用户名
            String password = "jimmy1016";  //数据库用户密码
            Connection conn = DriverManager.getConnection(url, username, password);  //连接状态
            statement=conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
            resultSet=statement.executeQuery("select * from register;");//查询所有表中数据
            resultSet.last();
            int totalCount=resultSet.getRow();
            int totalPage;
            if(totalCount==0){
                totalPage=0;
            }
            else{
                totalPage=(int)Math.ceil((double)totalCount/3);
            }
            if(pageCurl1==null){
                pageCurl1="1";
            }
            pageCur=Integer.parseInt(pageCurl1);
            page.setTotalCount(totalCount);
            page.setTotalPage(totalPage);
            page.setPageCur(pageCur);
            startIndex=(pageCur-1)*3;
            out.print(startIndex);
            if((pageCur-1)*3>totalPage){
                pageCur=pageCur-1;
            }
            int perPageSize=3;
            preparedStatement=conn.prepareStatement("select * from register limit ?,?");
            preparedStatement.setInt(1,startIndex);
            preparedStatement.setInt(2,perPageSize);
            resultSet=preparedStatement.executeQuery();
            allRegister= new ArrayList<>();
            while(resultSet.next()){//当结果集不为空时，获取结果，并放入对象
                Information in=new Information();
                in.setPhone(resultSet.getString("Phone"));
                in.setName(resultSet.getString("Name"));
                in.setPassword(resultSet.getString("Password"));
                in.setEmail(resultSet.getString("Email"));
                allRegister.add(in);
            }
            request.setAttribute("allRegister",allRegister);
            request.setAttribute("allPage",page);
            resultSet.close();
            preparedStatement.close();
            conn.close();
            RequestDispatcher dis= request.getRequestDispatcher("SearchAllRegister.jsp");
            dis.forward(request,response);
        }
        catch (Exception e){
            e.printStackTrace();
        }

    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }
}
