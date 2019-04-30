import Dao.ConnectionDb;

import java.io.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Test {

    public static void main(String[] args) {
        try {
            Connection connection = ConnectionDb.getConnection();

            PreparedStatement statement = connection.prepareCall("{CALL  GetProducts(1)}");

            ResultSet rs = statement.executeQuery();


            File f;
            byte buffer[] = new byte[1024];
            int size = 0;

            BufferedInputStream bis=null;
            BufferedOutputStream bos=null;
            InputStream is = null;
            FileOutputStream fis=null;

            for (int i = 0 ;rs.next();i++){
                f = new  File("/home/onur/test/images"+i+".jpg");

                is = rs.getBinaryStream("Picture");
                fis = new FileOutputStream(f);

                bis = new BufferedInputStream(is,1024);
                bos = new BufferedOutputStream(fis,1024);


                size = bis.read(buffer);


                while(size != -1){
                    bos.write(buffer,0,1024);
                    size = bis.read(buffer,0,1024);
                }




            }
            connection.close();
            is.close();
            fis.close();
            bis.close();
            bos.close();

        } catch (SQLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


}
