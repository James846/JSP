package Controller;

import POJO.Student;
import Service.StudentService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import javax.annotation.Resource;


@Controller
public class StudentController {
    @Resource
    private StudentService studentService;

    @RequestMapping(value="/register",method = RequestMethod.POST )
    public String register(Student student){
        if(studentService.register(student)>0){
            return "register";
        }
        else{
            return "registerFailed";
        }
    }

    @RequestMapping(value="/login",method = RequestMethod.POST)
    public String login(Student student,Model model){
        if(studentService.login(student)!=null){
            model.addAttribute("name",studentService.login(student).getUsername());
            return "login";
        }
        else{
            return "loginFailed";
        }
    }

    @RequestMapping(value = "/selectAll",method = RequestMethod.GET)
    public String selectAll(Model model){
        model.addAttribute("students",studentService.selectAll());
        return "login";
    }

}
