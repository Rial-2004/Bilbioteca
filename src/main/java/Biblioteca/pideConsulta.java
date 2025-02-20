package Biblioteca;

import java.sql.*;

public class pideConsulta {
    static String url = "jdbc:mysql://localhost:3306/rialmar";
    static String user = "root";
    static String password = "";

    public static void MuestraTablaUsers() {
        try(Connection conex = DriverManager.getConnection(url,user,password)){
            Statement stmt = conex.createStatement();
            String query = "SELECT * FROM users";
            ResultSet rs = stmt.executeQuery(query);
            while(rs.next()){
                System.out.printf("%s, %s, %s%n",
                        rs.getString("DNI"),
                        rs.getString("nombre"),
                        rs.getString("email"));
            }
        }catch(SQLException e){
            e.printStackTrace();
        }
    }
    public static void MuestraTablaBooks() {
        try(Connection conex = DriverManager.getConnection(url,user,password)){
            Statement stmt = conex.createStatement();
            String query = "SELECT * FROM books";
            ResultSet rs = stmt.executeQuery(query);
            while(rs.next()){
                System.out.printf("%s, %s, %s%n",
                        rs.getString("ISBN"),
                        rs.getString("titulo"),
                        rs.getString("autor"));
            }
        }catch(SQLException e){
            e.printStackTrace();
        }
    }
}
