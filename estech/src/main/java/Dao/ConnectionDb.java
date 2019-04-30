package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionDb {

    private static Connection connection = null;


    private ConnectionDb(){

    }


    public static Connection getConnection() throws SQLException {
        if(connection == null)
            connection = DriverManager.getConnection("jdbc:mariadb://localhost/estech","customer","customer1234");

        return connection;
    }



}
