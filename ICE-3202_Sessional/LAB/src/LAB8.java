import java.sql.*;
public class LAB8{
    public static void main(String[] args){
          try{
        	  Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");//Loading Driver
              Connection connection= DriverManager.getConnection("jdbc:ucanaccess://E:\\3-2\\ICE-3201 NP\\ICE-3202 Sessional\\LabReport\\ICE_PUST.accdb");//Establishing Connection
             System.out.println("Connected Successfully");
              //Crating PreparedStatement object
              PreparedStatement preparedStatement=connection.prepareStatement("INSERT INTO Student(Name,Email,Phone) VALUES (?, ?, ?)");
              //Setting values for Each Parameter
              preparedStatement.setString(1, "Abu");
              preparedStatement.setString(2, "abuysbi.ru@gmail.com");
              preparedStatement.setString(3, "01726633140");
              //Executing Query
              preparedStatement.executeUpdate();
              System.out.println("data inserted successfully");
 
          }catch(Exception e){
              System.out.println("Error in connection");
 
          }
 
    }
}
