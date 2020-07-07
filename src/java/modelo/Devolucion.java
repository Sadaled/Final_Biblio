/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import controlador.autentica;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;
import controlador.procesa;

/**
 *
 * @author ASUS
 */
public class Devolucion {
    private String CodDevolucion;
    private String Fecha_Devolucion;
    private String CodPrestamo;
    private Connection conexion;

    public String getCodDevolucion() {
        return CodDevolucion;
    }

    public void setCodDevolucion(String CodDevolucion) {
        this.CodDevolucion = CodDevolucion;
    }

    public String getFecha_Devolucion() {
        return Fecha_Devolucion;
    }

    public void setFecha_Devolucion(String Fecha_Devolucion) {
        this.Fecha_Devolucion = Fecha_Devolucion;
    }

    public String getCodPrestamo() {
        return CodPrestamo;
    }

    public void setCodPrestamo(String CodPrestamo) {
        this.CodPrestamo = CodPrestamo;
    }

    public Connection getConexion() {
        return conexion;
    }

    public void setConexion(Connection conexion) {
        this.conexion = conexion;
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
    
    public LinkedList<Devolucion> listaDevolucion(){
        try {
            conecta();
            String query = "SELECT * FROM Devolucion; ";
            Statement sentencia = conexion.createStatement();
            ResultSet resultado = sentencia.executeQuery(query);
            LinkedList<Devolucion> lista4;
            lista4 = new LinkedList<Devolucion>();
            while(resultado.next()){
                Devolucion d = new Devolucion(); 
                d.setCodDevolucion(resultado.getString("CodDevolucion"));
                d.setFecha_Devolucion(resultado.getString("Fecha_Devolucion"));
                d.setCodPrestamo(resultado.getString("CodPrestamo"));
                
                lista4.add(d);
            }
            conexion.close();
            return lista4;
        } catch (Exception e) {
            System.out.println("Problema de conexion...");
        }
        return null;
    }
    
}
