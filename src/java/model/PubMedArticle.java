/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.LinkedList;

/**
 *
 * @author vinicius
 */
public class PubMedArticle {
    public PubMedArticle(Integer articleID, String affliation, 
                         String publicationStatus, String title, 
                         Integer pagBegin, Integer numberOfPages, 
                         LinkedList<PubType> pTypes, LinkedList<Author> authors,
                         LinkedList<Substance> substances, 
                         JournalIssue journalIssue, 
                         LinkedList<KeyWord> keywords, 
                         LinkedList<MeshHeading> meshTerms)
    {
        this.articleID = articleID;
        this.affliation = affliation;
        this.publicationStatus = publicationStatus;
        this.title = title;
        this.pagBegin = pagBegin;
        this.pTypes = pTypes;
        this.authors = authors;
        this.substances = substances;
        this.journalIssue = journalIssue;
        this.keywords = keywords;
        this.meshTerms = meshTerms;
        this.numberOfPages = numberOfPages;
    }

    public PubMedArticle() {
        this.pTypes = new LinkedList();
        this.authors = new LinkedList();
        this.substances = new LinkedList();
        this.keywords = new LinkedList();
        this.meshTerms = new LinkedList();
    }
    private Integer articleID;
    private String affliation;
    private String publicationStatus;
    private String title;
    private Integer pagBegin;
    private Integer numberOfPages;
    private LinkedList<PubType> pTypes;
    private LinkedList<Author>  authors;
    private LinkedList<Substance> substances;
    private JournalIssue journalIssue;
    private LinkedList<KeyWord> keywords;
    private LinkedList<MeshHeading> meshTerms;
    private String journal;
    /**
     * @return the articleID
     */
    public Integer getArticleID() {
        return articleID;
    }

    /**
     * @param articleID the articleID to set
     */
    public void setArticleID(Integer articleID) {
        this.articleID = articleID;
    }

    /**
     * @return the affliation
     */
    public String getAffliation() {
        return affliation;
    }

    /**
     * @param affliation the affliation to set
     */
    public void setAffliation(String affliation) {
        this.affliation = affliation;
    }

    /**
     * @return the publicationStatus
     */
    public String getPublicationStatus() {
        return publicationStatus;
    }

    /**
     * @param publicationStatus the publicationStatus to set
     */
    public void setPublicationStatus(String publicationStatus) {
        this.publicationStatus = publicationStatus;
    }

    /**
     * @return the title
     */
    public String getTitle() {
        return title;
    }

    /**
     * @param title the title to set
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * @return the pagBegin
     */
    public Integer getPagBegin() {
        return pagBegin;
    }

    /**
     * @param pagBegin the pagBegin to set
     */
    public void setPagBegin(Integer pagBegin) {
        this.pagBegin = pagBegin;
    }

    /**
     * @return the pagEnd
     */
    public Integer getPagEnd() {
        return (this.numberOfPages + this.pagBegin) - 1;
    }



    /**
     * @return the pTypes
     */
    public LinkedList<PubType> getpTypes() {
        return pTypes;
    }

    /**
     * @param pTypes the pTypes to set
     */
    public void setpTypes(LinkedList<PubType> pTypes) {
        this.pTypes = pTypes;
    }

    /**
     * @return the authors
     */
    public LinkedList<Author> getAuthors() {
        return authors;
    }

    /**
     * @param authors the authors to set
     */
    public void setAuthors(LinkedList<Author> authors) {
        this.authors = authors;
    }

    /**
     * @return the substances
     */
    public LinkedList<Substance> getSubstances() {
        return substances;
    }

    /**
     * @param substances the substances to set
     */
    public void setSubstances(LinkedList<Substance> substances) {
        this.substances = substances;
    }

    /**
     * @return the journalIssue
     */
    public JournalIssue getJournalIssue() {
        return journalIssue;
    }

    /**
     * @param journalIssue the journalIssue to set
     */
    public void setJournalIssue(JournalIssue journalIssue) {
        this.journalIssue = journalIssue;
    }

    /**
     * @param journalIssue the journalIssue to set
     */
    public void setJournal(String journal) {
        this.journal = journal;
    }

    /**
     * @return the keywords
     */
    public LinkedList<KeyWord> getKeywords() {
        return keywords;
    }

    /**
     * @param keywords the keywords to set
     */
    public void setKeywords(LinkedList<KeyWord> keywords) {
        this.keywords = keywords;
    }

    /**
     * @return the meshTerms
     */
    public LinkedList<MeshHeading> getMeshTerms() {
        return meshTerms;
    }

    /**
     * @param meshTerms the meshTerms to set
     */
    public void setMeshTerms(LinkedList<MeshHeading> meshTerms) {
        this.meshTerms = meshTerms;
    }

    /**
     * @return the numberOfPages
     */
    public Integer getNumberOfPages() {
        return numberOfPages;
    }

    /**
     * @param numberOfPages the numberOfPages to set
     */
    public void setNumberOfPages(Integer numberOfPages) {
        this.numberOfPages = numberOfPages;
    }    
}
