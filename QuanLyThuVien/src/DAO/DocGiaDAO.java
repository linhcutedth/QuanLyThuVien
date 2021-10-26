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

public class DocGiaDAO {
    public static PreparedStatement pst = null;
    public static CallableStatement stmt = null ;
    public static ResultSet rs = null;
    public static Connection conn = Connect.getConnect();
  
      public static boolean InsertDocGia(DocGia dg) {
        
        String sql = "{CALL THEM_DOC_GIA(?,?,?,?,?,?,?)} ";
        try
        {
            stmt = conn.prepareCall(sql);
            stmt.setString(1, dg.getmADOCGIA());
            stmt.setString(2, dg.gethOTEN());
            stmt.setDate(3,(Date) dg.getnGAYSINH());
            stmt.setString(4, dg.getlOAIDG());
            stmt.setString(5, dg.getdIACHI());
            stmt.setString(6, dg.geteMAIL());
            stmt.setDate(7,(Date) dg.getnGAYLAPTHE());
            return stmt.executeUpdate()>0; 
        } catch(SQLException ex) {
            throw new ArithmeticException(ex.getMessage());
        }
    }
   public static boolean DeleteDocGia(String madocgia) {
        
         String sql = "call xoa_doc_gia(?)";
        try {
            stmt = conn.prepareCall(sql);
            stmt.setString(1,madocgia);
            return stmt.executeUpdate()>0; 
        } catch(SQLException ex) {
            throw new ArithmeticException(ex.getMessage());
        }
    }
   public boolean UpdateDocGia(DocGia dg)  {
        String sql = "update DOCGIA set  HOTEN = ?, NGAYSINH = ?, LOAIDG = ?, DIACHI=?, EMAIL =?, nglapthe=? where MADOCGIA = ?";
        
        try
        {            
            pst= conn.prepareStatement(sql);
            pst.setString(7, dg.getmADOCGIA());
            pst.setString(1, dg.gethOTEN());
            pst.setDate(2, (Date) dg.getnGAYSINH());
            pst.setString(3, dg.getlOAIDG());
            pst.setString(4, dg.getdIACHI());
            pst.setString(5, dg.geteMAIL());
            pst.setDate(6,(Date) dg.getnGAYLAPTHE());
           
               
            return pst.executeUpdate() >0;
        }        catch(SQLException ex) {
            throw new ArithmeticException(ex.getMessage());
    }
}
   
}
