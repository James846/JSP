import bean.CalculateBean;
import bean.Computer;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "HandleComputer", value = "/HandleComputer")
public class HandleComputer extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("GBK");     //设置编码，防止中文乱码
        String numberOne =request.getParameter("numberOne");
        String operator =request.getParameter("operator");
        String numberTwo =request.getParameter("numberTwo");
        Computer gb=new Computer(); //实例化模型
        CalculateBean cb=new CalculateBean();
        gb.setNumberOne(Double.parseDouble(numberOne));
        gb.setNumberTwo(Double.parseDouble(numberTwo));
        gb.setOperator(operator);
        gb.setResult(cb.Calculate(gb));
        request.setAttribute("computer",gb);
        RequestDispatcher dis=request.getRequestDispatcher("showResult.jsp");
        dis.forward(request, response);
    }
}
