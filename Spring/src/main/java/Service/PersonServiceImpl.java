package Service;

import Model.Person;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class PersonServiceImpl {
    public static void main(String[]args)throws Exception{
        ApplicationContext appletContext=new ClassPathXmlApplicationContext("applicationContext.xml");
        Person person=appletContext.getBean("peopleAddress", Person.class);
        System.out.println(person.getAll());
    }
}
