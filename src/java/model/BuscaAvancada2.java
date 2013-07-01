/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

public class BuscaAvancada2 {
    public BuscaAvancada2() {
    }

    public BuscaAvancada2(String mesh, int qtde) {
        this.mesh = mesh;
        this.qtde = qtde;
    }

    public String getMesh() {
        return mesh;
    }

    public void setMesh(String mesh) {
        this.mesh = mesh;
    }

    public int getQtde() {
        return qtde;
    }

    public void setQtde(int qtde) {
        this.qtde = qtde;
    }

    private String mesh; // meshTerm
    private int qtde; // substancia quimica
}
    