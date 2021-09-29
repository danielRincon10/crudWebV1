/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelos;

import java.sql.PreparedStatement;

/**
 *
 * @author PC_Daniel
 */
public class Producto {
    //ATRIBUTOS 
    int codigoProducto; 
    String nombreProducto; 
    int cantidadProducto; 
    int precioProducto; 
    String categoriaProducto; 

    //CONSTRUCTOR
    public Producto() {
    }
    
    //ENCAPSULAR 
    public int getCodigoProducto() {
        return codigoProducto;
    }

    public void setCodigoProducto(int codigoProducto) {
        this.codigoProducto = codigoProducto;
    }

    public String getNombreProducto() {
        return nombreProducto;
    }

    public void setNombreProducto(String nombreProducto) {
        this.nombreProducto = nombreProducto;
    }

    public int getCantidadProducto() {
        return cantidadProducto;
    }

    public void setCantidadProducto(int cantidadProducto) {
        this.cantidadProducto = cantidadProducto;
    }

    public int getPrecioProducto() {
        return precioProducto;
    }

    public void setPrecioProducto(int precioProducto) {
        this.precioProducto = precioProducto;
    }

    public String getCategoriaProducto() {
        return categoriaProducto;
    }

    public void setCategoriaProducto(String categoriaProducto) {
        this.categoriaProducto = categoriaProducto;
    }
    
    //METODOS
    public void crearProducto(){
        Conexion objConector = new Conexion(); 
        objConector.conectar();
        
        try {
            
            String sql = "INSERT INTO producto VALUES (?,?,?,?,?);";
            PreparedStatement stmt; 
            stmt = objConector.conn.prepareStatement(sql); 
            stmt.setInt(1, this.codigoProducto);
            stmt.setString(2, this.nombreProducto);
            stmt.setInt(3, this.cantidadProducto);
            stmt.setInt(4, this.precioProducto);
            stmt.setString(5, this.categoriaProducto);
            
            stmt.execute(); 
            
            objConector.desconectar();
            
        } catch (Exception error) {
            System.out.println("Error en modelo: "+error);
        }
    }
    
    public void consultarProducto(){
        
    }
    
    public void listarProducto(){
        
    }
    
    public void actualizarProducto(){
        
    }
    
    public void eliminarProducto(){
        
    }
}
