package bean;

public class CalculateBean {
    public double Calculate(Computer computer){
        if(computer.operator.equals("+")){
           return computer.numberOne+ computer.numberTwo;
        }
        if(computer.operator.equals("-")){
            return computer.numberOne- computer.numberTwo;
        }
        if(computer.operator.equals("*")){
            return computer.numberOne* computer.numberTwo;
        }
        if(computer.operator.equals("/")){
            return computer.numberOne/ computer.numberTwo;
        }
        return 0;
    }
}
