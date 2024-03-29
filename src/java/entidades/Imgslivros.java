package entidades;
// Generated 06/07/2023 10:29:18 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Imgslivros generated by hbm2java
 */
public class Imgslivros  implements java.io.Serializable {


     private Integer codImg;
     private String imgNomTxt;
     private String imgPathTxt;
     private byte[] imgFile;
     private Set livroses = new HashSet(0);

    public Imgslivros() {
    }

    public Imgslivros(String imgNomTxt, String imgPathTxt, byte[] imgFile, Set livroses) {
       this.imgNomTxt = imgNomTxt;
       this.imgPathTxt = imgPathTxt;
       this.imgFile = imgFile;
       this.livroses = livroses;
    }
   
    public Integer getCodImg() {
        return this.codImg;
    }
    
    public void setCodImg(Integer codImg) {
        this.codImg = codImg;
    }
    public String getImgNomTxt() {
        return this.imgNomTxt;
    }
    
    public void setImgNomTxt(String imgNomTxt) {
        this.imgNomTxt = imgNomTxt;
    }
    public String getImgPathTxt() {
        return this.imgPathTxt;
    }
    
    public void setImgPathTxt(String imgPathTxt) {
        this.imgPathTxt = imgPathTxt;
    }
    public byte[] getImgFile() {
        return this.imgFile;
    }
    
    public void setImgFile(byte[] imgFile) {
        this.imgFile = imgFile;
    }
    public Set getLivroses() {
        return this.livroses;
    }
    
    public void setLivroses(Set livroses) {
        this.livroses = livroses;
    }




}


