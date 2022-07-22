package DAO;

import POJO.Student;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.ResultType;
import org.apache.ibatis.annotations.Select;

import java.util.List;


public interface StudentDAO {
    @Insert("insert into student(username,password) values(#{username},#{password})")
    int insert(Student student);
    @Select("select * from student where username=#{username} and password=#{password}")
    Student select(Student student);
    @Select("select * from student")
    @ResultType(Student.class)
    List<Student>selectAll();
}
