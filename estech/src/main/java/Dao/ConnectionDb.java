package Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionDb {

    private static Connection connection = null;


    private ConnectionDb(){

    }


    public static Connection getConnection() throws SQLException, ClassNotFoundException {
        if(connection == null) {

            Class.forName("org.mariadb.jdbc.Driver");


            connection = DriverManager.getConnection("jdbc:mariadb://localhost/estech", "customer", "customer1234");
        }
        return connection;
    }

    public static void closeConnection() throws SQLException{
        if(connection != null && !connection.isClosed())
            connection.close();
    }


}
