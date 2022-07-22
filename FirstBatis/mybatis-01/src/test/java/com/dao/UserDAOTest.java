package com.dao;

import com.pojo.Goods;
import com.utils.mybatisUtils;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import java.util.List;


public class UserDAOTest {
    @Test
    public void Test(){
        SqlSession sqlSession=mybatisUtils.getSqlSession();
        List<Goods>userList=sqlSession.selectList("getCertainGoods",2);
        Goods AllGoods=new Goods();
        List<Goods>allGoods=sqlSession.selectList("getAllGoods",AllGoods);
        System.out.println("以下是查询的2号订单所有商品信息：");
        for(Goods goods:userList){
            System.out.println(goods.getIdgoods()+" "+goods.getGoodsname()+" "+goods.getGoodstype()+" 订单号："+ goods.getForm());
        }
        System.out.println("以下是所有商品信息：");
        for(Goods goods:allGoods){
            System.out.println(goods.getIdgoods()+" "+goods.getGoodsname()+" "+goods.getGoodstype()+" 订单号："+goods.getForm());
        }
        sqlSession.close();
    }
}
