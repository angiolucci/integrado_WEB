/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author vinicius
 */
public class Journal {
        public Journal() {
    }

    public String getIssn() {
        return issn;
    }

    public void setIssn(String issn) {
        this.issn = issn;
    }

    public String getIsoAbreviation() {
        return isoAbreviation;
    }

    public void setIsoAbreviation(String isoAbreviation) {
        this.isoAbreviation = isoAbreviation;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Journal(String issn, String isoAbreviation, String title) {
        this.issn = issn;
        this.isoAbreviation = isoAbreviation;
        this.title = title;
    }
    private String issn;
    private String isoAbreviation;
    private String title;
}
