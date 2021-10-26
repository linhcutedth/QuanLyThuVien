/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Object;

/**
 *
 * @author minh
 */
public class ChiTietTraSach extends PhieuTraSach {
    private String mAPHIEUTRA, mASACH, sONGAYTRATRE, tIENPHAt;

    public ChiTietTraSach() {
    }

    public ChiTietTraSach(String mAPHIEUTRA, String mASACH, String sONGAYTRATRE, String tIENPHAt) {
        this.mAPHIEUTRA = mAPHIEUTRA;
        this.mASACH = mASACH;
        this.sONGAYTRATRE = sONGAYTRATRE;
        this.tIENPHAt = tIENPHAt;
    }

    public String getmAPHIEUTRA() {
        return mAPHIEUTRA;
    }

    public void setmAPHIEUTRA(String mAPHIEUTRA) {
        this.mAPHIEUTRA = mAPHIEUTRA;
    }

    public String getmASACH() {
        return mASACH;
    }

    public void setmASACH(String mASACH) {
        this.mASACH = mASACH;
    }

    public String getsONGAYTRATRE() {
        return sONGAYTRATRE;
    }

    public void setsONGAYTRATRE(String sONGAYTRATRE) {
        this.sONGAYTRATRE = sONGAYTRATRE;
    }

    public String gettIENPHAt() {
        return tIENPHAt;
    }

    public void settIENPHAt(String tIENPHAt) {
        this.tIENPHAt = tIENPHAt;
    }
    
    
    
    
}
