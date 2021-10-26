/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

/**
 *
 * @author minh
 */
import java.sql.*;
import Object.*;
public class ChiTietTraSachDAO {
    public static PreparedStatement pst = null;
    public static ResultSet rs = null;
    public static CallableStatement stmt = null ;
    public static Connection conn = Connect.getConnect();
    public static boolean InsertCTTS(ChiTietTraSach ctts) {
        
        String sql = "call THEM_CTTS(?,?)";
        try {
            stmt = conn.prepareCall(sql);
            stmt.setString(1, ctts.getmAPHIEUTRA());
            stmt.setString(2, ctts.getmASACH());       
            
            
            return stmt.executeUpdate()>0; 
        } catch(SQLException ex) {
            throw new ArithmeticException(ex.getMessage());
        }
    }
   public static boolean DeleteCTTS(ChiTietTraSach ctts) {
        
         String sql = "call XOA_CTTS(?,?)";
        try {
            stmt = conn.prepareCall(sql);
            stmt.setString(1, ctts.getmAPHIEUTRA());
            stmt.setString(2, ctts.getmASACH());    
            return stmt.executeUpdate()>0; 
        } catch(SQLException ex) {
            throw new ArithmeticException(ex.getMessage());
        }
    }
   public boolean UpdateCTTS(ChiTietTraSach ctts)  {
        String sql = "update CTTS set  MASACH =  ?, SONGAYTRATRE = ?, TIENPHAT = ? where MAPHIEUTRA = ?";
        
        try
        {
           pst= conn.prepareStatement(sql); 
           pst.setString(4, ctts.getmAPHIEUTRA());
           pst.setString(1, ctts.getmASACH());       
           pst.setString(2, ctts.getsONGAYTRATRE());
           pst.setString(3, ctts.gettIENPHAt());
               
            return pst.executeUpdate() >0;
        }        catch(SQLException ex) {
            throw new ArithmeticException(ex.getMessage());
    }
}
}
