/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package p.ulti;

/**
 *
 * @author LAPNV
 */
public class Catalog {
    public int catalogId;
    public String catalogName;
    public String description;
    public boolean status;
    public int parentId;

    public Catalog() {
    }

    public Catalog(int catalogId, String catalogName, String description, boolean status, int parentId) {
        this.catalogId = catalogId;
        this.catalogName = catalogName;
        this.description = description;
        this.status = status;
        this.parentId = parentId;
    }

    public int getCatalogId() {
        return catalogId;
    }

    public void setCatalogId(int catalogId) {
        this.catalogId = catalogId;
    }

    public String getCatalogName() {
        return catalogName;
    }

    public void setCatalogName(String catalogName) {
        this.catalogName = catalogName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public int getParentId() {
        return parentId;
    }

    public void setParentId(int parentId) {
        this.parentId = parentId;
    }

    
    
    
    
}
