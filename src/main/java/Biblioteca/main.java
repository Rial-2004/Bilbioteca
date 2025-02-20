package Biblioteca;

import java.util.Random;

public class main {
    public static void main(String[] args) {
        Random rm = new Random();
        String DNI= String.valueOf(10000000 + rm.nextInt(90000000))+"A";
        String nombre ="nuevousuario";
        String  email = "usuario"+Integer.toString(1000+rm.nextInt(9000))+"@gmail.com";
        usuario.anadeUsuario(DNI,nombre,email);
        String ISBN= String.valueOf(1000 + rm.nextInt(1000))+String.valueOf(1000 + rm.nextInt(1000))+String.valueOf(1000 + rm.nextInt(1000))+"A";
        String titulo="nuevolibro";
        String sutor="autorlibro";
        libro.anadeLibro(ISBN,titulo,sutor);
        pideConsulta.MuestraTablaUsers();
        pideConsulta.MuestraTablaBooks();
    }
}
