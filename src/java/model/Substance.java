/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author vinicius
 */
public class Substance {
    public Substance() {
    }

    public Substance(String nameOfSubstance) {
        this.nameOfSubstance = nameOfSubstance;
    }

    public String getNameOfSubstance() {
        return nameOfSubstance;
    }

    public void setNameOfSubstance(String nameOfSubstance) {
        this.nameOfSubstance = nameOfSubstance;
    }
    private String nameOfSubstance;    
}
