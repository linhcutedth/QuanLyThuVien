/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Object;

import java.sql.Date;

/**
 *
 * @author minh
 */

public class DocGia {

   private String mADOCGIA,hOTEN,lOAIDG,dIACHI,eMAIL;
   private Date nGAYSINH,nGAYLAPTHE;

    public DocGia() {
    }

    public DocGia(String mADOCGIA, String hOTEN, String lOAIDG, String dIACHI, String eMAIL, Date nGAYSINH, Date nGAYLAPTHE) {
        this.mADOCGIA = mADOCGIA;
        this.hOTEN = hOTEN;
        this.lOAIDG = lOAIDG;
        this.dIACHI = dIACHI;
        this.eMAIL = eMAIL;
        this.nGAYSINH = nGAYSINH;
        this.nGAYLAPTHE = nGAYLAPTHE;
    }

    public String getmADOCGIA() {
        return mADOCGIA;
    }

    public void setmADOCGIA(String mADOCGIA) {
        this.mADOCGIA = mADOCGIA;
    }

    

    public String gethOTEN() {
        return hOTEN;
    }

    public void sethOTEN(String hOTEN) {
        this.hOTEN = hOTEN;
    }

    public String getlOAIDG() {
        return lOAIDG;
    }

    public void setlOAIDG(String lOAIDG) {
        this.lOAIDG = lOAIDG;
    }

    public String getdIACHI() {
        return dIACHI;
    }

    public void setdIACHI(String dIACHI) {
        this.dIACHI = dIACHI;
    }

    public String geteMAIL() {
        return eMAIL;
    }

    public void seteMAIL(String eMAIL) {
        this.eMAIL = eMAIL;
    }

    public Date getnGAYSINH() {
        return nGAYSINH;
    }

    public void setnGAYSINH(Date nGAYSINH) {
        this.nGAYSINH = nGAYSINH;
    }

    public Date getnGAYLAPTHE() {
        return nGAYLAPTHE;
    }

    public void setnGAYLAPTHE(Date nGAYLAPTHE) {
        this.nGAYLAPTHE = nGAYLAPTHE;
    }
   
   
    
}
