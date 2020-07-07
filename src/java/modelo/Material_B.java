package modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;
import controlador.procesa;
import controlador.procesa;
import java.sql.Date;


public class Material_B {
    private String CodMate_biblio ,CodEsta_mate,AutMate,EditMate,EdiMate,StaMate_biblio;
    private Date FePMate;

    public String getCodMate_biblio() {
        return CodMate_biblio;
    }

    public void setCodMate_biblio(String CodMate_biblio) {
        this.CodMate_biblio = CodMate_biblio;
    }

    public String getCodEsta_mate() {
        return CodEsta_mate;
    }

    public void setCodEsta_mate(String CodEsta_mate) {
        this.CodEsta_mate = CodEsta_mate;
    }

    public String getAutMate() {
        return AutMate;
    }

    public void setAutMate(String AutMate) {
        this.AutMate = AutMate;
    }

    public String getEditMate() {
        return EditMate;
    }

    public void setEditMate(String EditMate) {
        this.EditMate = EditMate;
    }

    public String getEdiMate() {
        return EdiMate;
    }

    public void setEdiMate(String EdiMate) {
        this.EdiMate = EdiMate;
    }

    public Date getFePMate() {
        return FePMate;
    }

    public void setFePMate(Date FePMate) {
        this.FePMate = FePMate;
    }

    public String getStaMate_biblio() {
        return StaMate_biblio;
    }

    public void setStaMate_biblio(String StaMate_biblio) {
        this.StaMate_biblio = StaMate_biblio;
    }
    
    private Connection conexion;

    public Material_B() {
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
    
    public LinkedList<Material_B> listaMaterial(){
        try {
            conecta();
            String query = "SELECT * FROM MATERIAL_BIBLIOG";
            Statement sentencia = conexion.createStatement();
            ResultSet resultado = sentencia.executeQuery(query);
            LinkedList<Material_B> lista3;
            lista3 = new LinkedList<Material_B>();
            while(resultado.next()){
                Material_B t = new Material_B(); 
                t.setCodMate_biblio(resultado.getString("CodMate_biblio"));
                t.setCodEsta_mate(resultado.getString("CodEsta_mate"));
                t.setAutMate(resultado.getString("AutMate"));
                t.setEditMate(resultado.getString("EditMate"));
                t.setEdiMate(resultado.getString("EdiMate"));
                t.setFePMate(resultado.getDate("FePMate"));
                t.setStaMate_biblio(resultado.getString("StaMate_biblio"));
                lista3.add(t);
            }
            conexion.close();
            return lista3;
        } catch (Exception e) {
            System.out.println("Problema de conexion...");
        }
        return null;
    }
    
    public void agregarMaterial(String CodMate_biblio,String CodEsta_mate,String AutMate,String EditMate,String EdiMate,Date FePMate, String StaMate_biblio){
        try {
            conecta();
            String query = "INSERT INTO MATERIAL_BIBLIOG VALUES(?,?,?,?,?,?,?)";
            PreparedStatement sentencia = conexion.prepareStatement(query);
            sentencia.setString(1,CodMate_biblio);
            sentencia.setString(2,CodEsta_mate);
            sentencia.setString(3,AutMate);
            sentencia.setString(4,EditMate);
            sentencia.setString(5,EdiMate);
            sentencia.setDate(6,FePMate);
            sentencia.setString(7,StaMate_biblio);
            sentencia.close();
            conexion.close();
        } catch (Exception e) {
            System.out.println("Problemas de insercion...");
        }
    }
    public void editarMaterial(String CodMate_biblio,String CodEsta_mate,String AutMate,String EditMate,String EdiMate,Date FePMate, String StaMate_biblio)
     {
        try {
            conecta();
            String query = "UPDATE MATERIAL_BIBLIOG SET CodMate_biblio=?, CodEsta_mate=?, AutMate=?, EditMate=?, EdiMate=? ,FePMate=?,StaMate_biblio=? WHERE CodMate_biblio=?; ";
            PreparedStatement sentencia = conexion.prepareStatement(query);
            sentencia.setString(1,CodMate_biblio);
            sentencia.setString(2,CodEsta_mate);
            sentencia.setString(3,AutMate);
            sentencia.setString(4,EditMate);
            sentencia.setString(5,EdiMate);
            sentencia.setDate(6,FePMate);
            sentencia.setString(7,StaMate_biblio);
            sentencia.setString(8,CodMate_biblio);
            
            sentencia.executeUpdate();
            sentencia.close();
            conexion.close();
        } catch (Exception e) {
            System.out.println("Problemas de insercion...");
        }
    }
    
    public void eliminarMaterial(String CodMate_biblio,String StaMate_biblio){
        try {
            conecta();
            String query = "UPDATE MATERIAL_BIBLIOG SET StaMate_biblio=? WHERE CodMate_biblio=?; ";
            PreparedStatement sentencia = conexion.prepareStatement(query);
            
            /*
            0 Habilitado
            1 Deshabilitado por prestamo 
            2 Deshabilitado por estado del material  
            3 Deshabilitado permanente
            */
            sentencia.setString(1,"3");
            sentencia.executeUpdate();
            sentencia.close();
            conexion.close();
        } catch (Exception e) {
            System.out.println("Problemas de eliminacion...");
        }
    }
    
}
