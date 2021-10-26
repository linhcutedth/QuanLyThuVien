/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Object;

import java.sql.*;
/**
 *
 * @author minh
 */
public class PhieuTraSach {
    private String mAPHIEUTRA, mADOCGIA, tIENPHATKINAY, tIENNO,tONGNO;
    private Date nGAYTRA;

    public PhieuTraSach() {
    }

    public PhieuTraSach(String mAPHIEUTRA, String mADOCGIA, String tIENPHATKINAY, String tIENNO, String tONGNO, Date nGAYTRA) {
        this.mAPHIEUTRA = mAPHIEUTRA;
        this.mADOCGIA = mADOCGIA;
        this.tIENPHATKINAY = tIENPHATKINAY;
        this.tIENNO = tIENNO;
        this.tONGNO = tONGNO;
        this.nGAYTRA = nGAYTRA;
    }

    public String getmAPHIEUTRA() {
        return mAPHIEUTRA;
    }

    public void setmAPHIEUTRA(String mAPHIEUTRA) {
        this.mAPHIEUTRA = mAPHIEUTRA;
    }

    public String getmADOCGIA() {
        return mADOCGIA;
    }

    public void setmADOCGIA(String mADOCGIA) {
        this.mADOCGIA = mADOCGIA;
    }

    public String gettIENPHATKINAY() {
        return tIENPHATKINAY;
    }

    public void settIENPHATKINAY(String tIENPHATKINAY) {
        this.tIENPHATKINAY = tIENPHATKINAY;
    }

    public String gettIENNO() {
        return tIENNO;
    }

    public void settIENNO(String tIENNO) {
        this.tIENNO = tIENNO;
    }

    public String gettONGNO() {
        return tONGNO;
    }

    public void settONGNO(String tONGNO) {
        this.tONGNO = tONGNO;
    }

    public Date getnGAYTRA() {
        return nGAYTRA;
    }

    public void setnGAYTRA(Date nGAYTRA) {
        this.nGAYTRA = nGAYTRA;
    }
    
}
