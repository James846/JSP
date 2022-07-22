package Service;

import DAO.StudentDAO;
import POJO.Student;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class StudentServiceImpl implements StudentService{
    @Resource
    private StudentDAO studentDAO;

    @Override
    public int register(Student student) {
        return studentDAO.insert(student);
    }

    @Override
    public Student login(Student student) {
         Student stu = new Student();
         stu=studentDAO.select(student);
         return stu;
    }

    @Override
    public List<Student> selectAll() {
        return studentDAO.selectAll();
    }
}
