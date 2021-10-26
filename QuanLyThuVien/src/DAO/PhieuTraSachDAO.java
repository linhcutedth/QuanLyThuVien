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
public class PhieuTraSachDAO {
    public static PreparedStatement pst = null;
    public static ResultSet rs = null;
    public static CallableStatement stmt = null ;
    public static Connection conn = Connect.getConnect();
  public static boolean InsertPhieuTraSach(PhieuTraSach pts) {
        
        String sql = "insert into PHIEUTRASACH(MAPHIEUTRA, MADOCGIA, NGAYTRA, TIENPHATKINAY) values(?,?,?,?)";
        try {
            pst= conn.prepareStatement(sql); 
            pst.setString(1, pts.getmAPHIEUTRA());
            pst.setString(2, pts.getmADOCGIA());
            pst.setDate(3,(Date) pts.getnGAYTRA());
            pst.setString(4, pts.gettIENPHATKINAY());
            
            
            return pst.executeUpdate()>0; 
        } catch(SQLException ex) {
            throw new ArithmeticException(ex.getMessage());
        }
    }
   public static boolean DeletePhieuTraSach(String maphieutra) {
        
         String sql = "call xoa_phieu_tra_sach(?)";
        try {
           stmt = conn.prepareCall(sql);
           stmt.setString(1,maphieutra);
            return stmt.executeUpdate()>0; 
        } catch(SQLException ex) {
            throw new ArithmeticException(ex.getMessage());
        }
    }
   public boolean UpdatePhieuTraSach(PhieuTraSach pts)  {
        String sql = "update PhieuTraSach set  MADOCGIA = ?, NGAYTRA = ?, TIENPHATKINAY = ?  where MAPHIEUTRA = ?";
        
        try
        {
           pst= conn.prepareStatement(sql); 
           pst.setString(4, pts.getmAPHIEUTRA());
           pst.setString(1, pts.getmADOCGIA());
           pst.setDate(2,(Date) pts.getnGAYTRA());
           pst.setString(3, pts.gettIENPHATKINAY());
           
            return pst.executeUpdate() >0;
        }        catch(SQLException ex) {
            throw new ArithmeticException(ex.getMessage());
    }
}
    
}
