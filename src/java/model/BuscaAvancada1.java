/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

public class BuscaAvancada1 {
    public BuscaAvancada1() {
    }

    public BuscaAvancada1(String titulo, String mesh, String subs) {
        this.titulo = titulo;
        this.mesh = mesh;
        this.subs = subs;
    }

    public String getMesh() {
        return mesh;
    }

    public void setMesh(String mesh) {
        this.mesh = mesh;
    }

    public String getSubs() {
        return subs;
    }

    public void setSubs(String subs) {
        this.subs = subs;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }
    
    private String titulo; // titulo do artigo
    private String mesh; // meshTerm
    private String subs; // substancia quimica
}
