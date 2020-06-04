package com.estech.testing;

import Dao.OrderDAO;
import Models.Order;
import org.junit.jupiter.api.Assertions;

import java.util.ArrayList;

import static org.junit.jupiter.api.Assertions.*;

class OrderDAOTest {

    private OrderDAO orderDAO;

    private Order order;

    public OrderDAOTest(){
        this.orderDAO = new OrderDAO();

        this.order = new Order();


        // Gerekli veriler: CustomerID,ProductTitle,Quantity,Ip,AddressID

        order.setProductTitle("MSI X299 PRO 10G Intel X299 Soket 2066 DDR4 4200MHz (O.C.) USB3.2 Anakart");
        order.setCustomerID(1);
        order.setQuantity(12);
        order.setIp("127.0.0.1");
        order.setAddresId(1);
    }


    @org.junit.jupiter.api.Test
    void addItem() {

//        orderDAO.addItem(order);


    }

    @org.junit.jupiter.api.Test
    void getItem() {
    }

    @org.junit.jupiter.api.Test
    void getItems() {

        ArrayList<Order> list = orderDAO.getItems(1);

        Assertions.assertNotNull(list);



    }

    @org.junit.jupiter.api.Test
    void testGetItems() {
    }

    @org.junit.jupiter.api.Test
    void updateItem() {
    }
}