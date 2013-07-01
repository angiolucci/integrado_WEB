/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

public class BuscaAvancada4 {

    public BuscaAvancada4() {
    }

    public BuscaAvancada4(String titulo, int qtde) {
        this.titulo = titulo;
        this.qtde = qtde;
    }

    public int getQtde() {
        return qtde;
    }

    public void setQtde(int qtde) {
        this.qtde = qtde;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }
    private String titulo; // titulo do artigo
    private int qtde;
}
