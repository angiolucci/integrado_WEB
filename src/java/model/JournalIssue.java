/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author vinicius
 */
public class JournalIssue {
     /**
     * @return the issue
     */
    public Integer getIssue() {
        return issue;
    }

    /**
     * @param issue the issue to set
     */
    public void setIssue(Integer issue) {
        this.issue = issue;
    }

    /**
     * @return the volume
     */
    public Integer getVolume() {
        return volume;
    }

    /**
     * @param volume the volume to set
     */
    public void setVolume(Integer volume) {
        this.volume = volume;
    }

    /**
     * @return the pubDate
     */
    public Integer[] getPubDate() {
        Integer[] date = new Integer[3];
        date[0] = this.pubDate.getDay();
        date[1] = this.pubDate.getMonth();
        date[2] = this.pubDate.getYear();
        return date;
    }
    
    public String getDateAsString(){
       return this.pubDate.toString();
    }
    
    public String getDateAsString(int dateType){
        return this.pubDate.toString(dateType);
    }

    /**
     * @param pubDate the pubDate to set
     */
    public void setPubDate(Integer y, Integer m, Integer d) {
        this.pubDate = new SimpleDate(y, m, d);
    }

    /**
     * @return the citedMedium
     */
    public String getCitedMedium() {
        return citedMedium;
    }

    /**
     * @param citedMedium the citedMedium to set
     */
    public void setCitedMedium(String citedMedium) {
        this.citedMedium = citedMedium;
    }

    /**
     * @return the journal
     */
    public Journal getJournal() {
        return journal;
    }

    /**
     * @param journal the journal to set
     */
    public void setJournal(Journal journal) {
        this.journal = journal;
    }
    
    public void printDate(){
        System.out.println(this.pubDate.toString());
    }

    public void setIssue(String string) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    private class SimpleDate{
        private Integer year;
        private Integer month;
        private Integer day;

        public SimpleDate() {
        }

        public SimpleDate(Integer year, Integer month, Integer day) {
            this.year = year;
            this.month = month;
            this.day = day;
        }
        
        public void setYear(Integer year){
            this.year = year;
        }
        
        public void setMonth(Integer month){
            this.month = month;
        }
        
        public void setDay(Integer day){
            this.day = day;
        }

        /**
         * @return the year
         */
        public Integer getYear() {
            return year;
        }

        /**
         * @return the month
         */
        public Integer getMonth() {
            return month;
        }

        /**
         * @return the day
         */
        public Integer getDay() {
            return day;
        }
        
        public String toString(){
            return this.day + "/" + this.month + "/" + this.year;
        }
        
        public String toString(int type){
            String strRet = null;
            if (type == 103)
                strRet =  this.toString();
            else if(type == 101)
                strRet = this.month + "/" + this.day + "/" + this.year;
            else if(type == 0)
                strRet = this.year + "/" + this.month + "/" + this.day;
            
            return strRet;
        }
    }
    
    private Integer issue;
    private Integer volume;
    private SimpleDate pubDate;
    private String citedMedium;
    private Journal journal;

    public String getIssn() {
        return issn;
    }

    public void setIssn(String issn) {
        this.issn = issn;
    }
    private String issn;
}
