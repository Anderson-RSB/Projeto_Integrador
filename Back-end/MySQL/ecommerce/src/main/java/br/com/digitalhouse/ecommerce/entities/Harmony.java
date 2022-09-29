package br.com.digitalhouse.ecommerce.entities;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table
public class Harmony implements Serializable {
    public static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String nameplate;
    @Column(columnDefinition = "TEXT")
    private String image;

    @ManyToMany
    @JoinTable(name = "harmony_product",
        joinColumns = @JoinColumn(name = "id_harmony"),
        inverseJoinColumns = @JoinColumn(name = "id_product"))
    Set<Product> products = new HashSet<>();

    // Construtor padrão
    public Harmony() {
    }

    // Construtor com atributos
    public Harmony(Integer id, String nameplate, String image) {
        this.id = id;
        this.nameplate = nameplate;
        this.image = image;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNameplate() {
        return nameplate;
    }

    public void setNameplate(String nameplate) {
        this.nameplate = nameplate;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Set<Product> getProducts() {
        return products;
    }
}