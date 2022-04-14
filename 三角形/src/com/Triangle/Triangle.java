package com.Triangle;
public class Triangle {
    int a,b,c;

    public int getA() {
        return a;
    }

    public void setA(int a) {
        this.a = a;
    }

    public int getB() {
        return b;
    }

    public void setB(int b) {
        this.b = b;
    }

    public int getC() {
        return c;
    }

    public void setC(int c) {
        this.c = c;
    }

    public boolean isTriangle(){
        return a + b > c && a + c > b && b + c > a && a>0 && b>0 && c>0;
    }
    public double Area(){
        if(isTriangle()){
            int h=(a + b + c) / 2;
            return Math.sqrt(h * (h - a) * (h - b) * (h - c));
        }
        else return 0;
    }
    public int Circumference(){
        if(isTriangle()){
            return a+b+c;
        }
        else return 0;
    }
}
