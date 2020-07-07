package modelo;

import controlador.autentica;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;
import controlador.procesa;


public class Prestamo {
    private String CodPrestamo;
    private String MatPrestamo;
    private String CodLector;
    private String Fecha_Prestamo;
    private String Fecha_Entrega;
    private Connection conexion;

    public String getCodPrestamo() {
        return CodPrestamo;
    }

    public String getCodLector() {
        return CodLector;
    }

    public void setCodLector(String CodLector) {
        this.CodLector = CodLector;
    }

    public void setCodPrestamo(String CodPrestamo) {
        this.CodPrestamo = CodPrestamo;
    }

    public String getMatPrestamo() {
        return MatPrestamo;
    }

    public void setMatPrestamo(String MatPrestamo) {
        this.MatPrestamo = MatPrestamo;
    }

    public String getFpPrestamo() {
        return Fecha_Prestamo;
    }

    public void setFpPrestamo(String FpPrestamo) {
        this.Fecha_Prestamo = FpPrestamo;
    }

    public String getFePrestamo() {
        return Fecha_Entrega;
    }

    public void setFePrestamo(String FePrestamo) {
        this.Fecha_Entrega = FePrestamo;
    }

    public Connection getConexion() {
        return conexion;
    }

    public void setConexion(Connection conexion) {
        this.conexion = conexion;
    }

    public Prestamo() {
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
    
    public LinkedList<Prestamo> listaPrestamo(){
        try {
            conecta();
            String query = "SELECT * FROM Prestamo; ";
            Statement sentencia = conexion.createStatement();
            ResultSet resultado = sentencia.executeQuery(query);
            LinkedList<Prestamo> lista3;
            lista3 = new LinkedList<Prestamo>();
            while(resultado.next()){
                Prestamo t = new Prestamo(); 
                t.setCodPrestamo(resultado.getString("CodPrestamo"));
                t.setMatPrestamo(resultado.getString("MatPrestamo"));
                t.setCodLector(resultado.getString("CodLector"));
                t.setFePrestamo(resultado.getString("FePrestamo"));
                t.setFpPrestamo(resultado.getString("FpPrestamo"));
                lista3.add(t);
            }
            conexion.close();
            return lista3;
        } catch (Exception e) {
            System.out.println("Problema de conexion...");
        }
        return null;
    }
        
    public void agregarPrestamo(String CodPrestamo,String FePrestamo,String FpPrestamo,String MatPrestamo,String CodLector,String StaPrestamo)
     {
        try {
            conecta();
            String query = "INSERT INTO Prestamo VALUES(?,?,?,?,?,?)";
            PreparedStatement sentencia = conexion.prepareStatement(query);
            sentencia.setString(1, CodPrestamo);
            sentencia.setString(2, MatPrestamo);
            sentencia.setString(3, CodLector);
            sentencia.setString(4, FpPrestamo);
            sentencia.setString(5, FePrestamo);
            sentencia.setString(6, StaPrestamo);
            sentencia.executeUpdate();//CodPrestamo MatPrestamo CodLector FpPrestamo FePrestamo StaPrestamo
            sentencia.close(); 
            conexion.close();
        } catch (Exception e) {
            System.out.println("Problemas de insercion...");
        }
    }
    
    public void editarPrestamo(String CodPrestamo,String FePrestamo,String FpPrestamo,String MatPrestamo,String CodLector,String StaPrestamo){
        try {
            conecta();
            String query="UPDATE Prestamo SET CodPrestamo=?,FePrestamo=?,FpPrestamo=?,MatPrestamo=?,CodLector=?,StaPrestamo=? WHERE CodPrestamo=?; ";
            PreparedStatement sentencia = conexion.prepareStatement(query);
            sentencia.setString(1, CodPrestamo);
            sentencia.setString(2, MatPrestamo);
            sentencia.setString(3, CodLector);
            sentencia.setString(4, FpPrestamo);
            sentencia.setString(5, FePrestamo);
            sentencia.setString(6, StaPrestamo);
            sentencia.setString(7, CodPrestamo);
            sentencia.executeUpdate();
            sentencia.close();
            conexion.close();
        } catch (Exception e) {
            System.out.println("Problemas de actualizacion...");
        }
    }
    
    public void eliminarPrestamo(String CodPrestamo,String StaPrestamo){
        try {
            conecta();
            String query = "UPDATE Prestamo SET StaPrestamo=? WHERE CodPrestamo=?; ";
            PreparedStatement sentencia = conexion.prepareStatement(query);
            sentencia.setString(1,"1");
            sentencia.setString(2,CodPrestamo);
            sentencia.executeUpdate();
            sentencia.close();
            conexion.close();
        } catch (Exception e) {
            System.out.println("Problemas de eliminacion...");
        }
    }  
}
