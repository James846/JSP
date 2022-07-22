package Controller;

import POJO.Person;
import Utils.ConnectDatabase;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
public class HandlePerson {
    @RequestMapping(value = "/handlePerson")
    public void getPerson(Person person, HttpServletResponse response) throws IOException {
        System.out.println(person);
        SqlSession sqlSession= ConnectDatabase.getSqlSession();
        sqlSession.insert("addPerson",person);
        sqlSession.commit();
        response.setContentType("text/html;charset=UTF-8");
        response.getWriter().print("成功插入数据库!");
    }
}
