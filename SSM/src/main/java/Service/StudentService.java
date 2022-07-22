package Service;

import POJO.Student;

import java.util.List;

public interface StudentService {
    int register(Student student);//注册功能
    Student login(Student student);//登录功能
    List<Student>selectAll();
}
