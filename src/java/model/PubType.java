/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author vinicius
 */
public class PubType {
    public PubType() {
    }

    public PubType(String pubtype) {
        this.pubtype = pubtype;
    }
    private String pubtype;

    /**
     * @return the pubtype
     */
    public String getPubtype() {
        return pubtype;
    }

    /**
     * @param pubtype the pubtype to set
     */
    public void setPubtype(String pubtype) {
        this.pubtype = pubtype;
    }
    
}
