package Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class HelloController {
    @RequestMapping(value = "/login")
    public ModelAndView login(@RequestParam(value = "username",defaultValue="xiaoqian")String username){
        ModelAndView mv=new ModelAndView();
        mv.addObject("name",username);
        mv.setViewName("LoginSuccess");
        return mv;
    }
}
