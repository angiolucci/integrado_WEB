/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author vinicius
 */
public class Author {
   public Author() {
    }

    public Author(String forename, String lastname, String initials, boolean yn) {
        this.forename = forename;
        this.lastname = lastname;
        this.initials = initials;
        this.yn = yn;
    }
    private String forename;
    private String lastname;
    private String initials;
    private boolean yn;

    /**
     * @return the forename
     */
    public String getForename() {
        return forename;
    }

    /**
     * @param forename the forename to set
     */
    public void setForename(String forename) {
        this.forename = forename;
    }

    /**
     * @return the lastname
     */
    public String getLastname() {
        return lastname;
    }

    /**
     * @param lastname the lastname to set
     */
    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    /**
     * @return the initials
     */
    public String getInitials() {
        return initials;
    }

    /**
     * @param initials the initials to set
     */
    public void setInitials(String initials) {
        this.initials = initials;
    }

    /**
     * @return the yn
     */
    public boolean isYn() {
        return yn;
    }

    /**
     * @param yn the yn to set
     */
    public void setYn(boolean yn) {
        this.yn = yn;
    }    
}
