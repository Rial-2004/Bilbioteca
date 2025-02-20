package Biblioteca;

import java.sql.*;

public class usuario {
    static String url = "jdbc:mysql://localhost:3306/rialmar";
    static String user = "root";
    static String password = "";

    public static void anadeUsuario(String dni, String nombre, String email){
        try(Connection cn = DriverManager.getConnection(url,user,password)){
            String sql = "INSERT INTO users (DNI,nombre,email) VALUES (?,?,?)";
            try(PreparedStatement ps = cn.prepareStatement(sql)){
                ps.setString(1, dni);
                ps.setString(2, nombre);
                ps.setString(3, email);
                int filasAfectadas = ps.executeUpdate();
                System.out.println("Filas afectadas: " + filasAfectadas);
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
    }
}

