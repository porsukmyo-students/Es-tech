package Dao;

import Models.Category;

import java.sql.*;
import java.util.ArrayList;

public class CategoryDAO implements DAO<Category> {

    Connection connection;
    PreparedStatement stmt=null;
    ResultSet rs=null;

    public CategoryDAO(){
        try {
            connection = ConnectionDb.getConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    @Override
    public void addItem(Category item) {

    }

    @Override
    public Category getItem(int id) {
        return null;
    }

    @Override
    public ArrayList<Category> getItems() {
        ArrayList<Category> list = new ArrayList<>();
        Category category = new Category();
        try{
            stmt = connection.prepareCall("{ CALL GetCategories()}");
            rs = stmt.executeQuery();

            while (rs.next()){
                category.setId(String.valueOf(rs.getShort("CategoryId")));
                category.setName(rs.getString("Name"));
                list.add(category);
            }



        } catch (SQLException e) {
            e.printStackTrace();
        }

        finally {
            try{
                if(rs != null && !rs.isClosed())
                    rs.close();
                if(stmt != null && !stmt.isClosed())
                    stmt.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }


        return list;
    }

    @Override
    public Boolean updateItem(Category item) {
        return null;
    }
}
