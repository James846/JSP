package Model;

public class Person {
    String name;
    String age;
    Address address;

    public Person(String name, String age, Address address) {
        this.name = name;
        this.age = age;
        this.address = address;
    }

    public String getAll() {
        return ("名字："+name+" 年龄："+age+" 地址名："+address.name+" 地址："+address.address);
    }

}
