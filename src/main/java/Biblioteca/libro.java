package Biblioteca;

import java.sql.*;

public class libro {
    static String url = "jdbc:mysql://localhost:3306/rialmar";
    static String user = "root";
    static String password = "";

    public static void anadeLibro(String isbn, String titulo, String autor){
        try(Connection cn = DriverManager.getConnection(url,user,password)){
            String sql = "INSERT INTO books (ISBN,titulo,autor) VALUES (?,?,?)";
            try(PreparedStatement ps = cn.prepareStatement(sql)){
                ps.setString(1, isbn);
                ps.setString(2, titulo);
                ps.setString(3, autor);
                int filasAfectadas = ps.executeUpdate();
                System.out.println("Filas afectadas: " + filasAfectadas);
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
    }
}
