/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;

/**
 *
 * @author ASUS
 */
public class Categoria {
    private String NomCate;
    private Connection conexion;
    
    public String getDescripcion() {
        return NomCate;
    }

    public void setDescripcion(String NomCate) {
        this.NomCate = NomCate;
    }
    
    public void conecta(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            String login="root";
            String pass="";
            String url="jdbc:mysql://localhost:3306/Discovery";
            this.conexion=DriverManager.getConnection(url,login,pass);
        } catch (Exception e) {
            System.out.println("Problema de conexion...");
        }
    }
    public LinkedList<Categoria> listaCategoria(){
        try {
            conecta();
            String query = "SELECT * FROM Categoria; ";
            Statement sentencia = conexion.createStatement();
            ResultSet resultado = sentencia.executeQuery(query);
            LinkedList<Categoria> lista3;
            lista3 = new LinkedList<Categoria>();
            while(resultado.next()){
                Categoria c = new Categoria(); 
                c.setDescripcion(resultado.getString("NomCate"));
                lista3.add(c);
            }
            conexion.close();
            return lista3;
        } catch (Exception e) {
            System.out.println("Problema de conexion...");
        }
        return null;
    }
        
    public void agregarCategoria(String NomCate)
     {
        try {
            conecta();
            String query = "INSERT INTO Categoria VALUES(?)";
            PreparedStatement sentencia = conexion.prepareStatement(query);
            sentencia.setString(1, NomCate);
            sentencia.executeUpdate();
            sentencia.close();
            conexion.close();
        } catch (Exception e) {
            System.out.println("Problemas de insercion...");
        }
    }
    
    public void eliminarCategoria(String NomCate){
        try {
            conecta();
            String query = "DELETE FROM Categoria WHERE NomCate=?; ";
            PreparedStatement sentencia = conexion.prepareStatement(query);
            sentencia.setString(1,NomCate);
            sentencia.executeUpdate();
            sentencia.close();
            conexion.close();
        } catch (Exception e) {
            System.out.println("Problemas de eliminacion...");
        }
    }
}
