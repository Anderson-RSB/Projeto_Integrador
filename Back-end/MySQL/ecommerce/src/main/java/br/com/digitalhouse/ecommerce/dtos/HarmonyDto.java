package br.com.digitalhouse.ecommerce.dtos;

import br.com.digitalhouse.ecommerce.entities.Harmony;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

public class HarmonyDto implements Serializable {
    private static final long serialVersionUID = 1L;

    private Integer id;
    private String nameplate;
    private String image;

    private Set<ProductDto> products = new HashSet<>();

    public HarmonyDto() {
    }

    public HarmonyDto(Integer id, String nameplate, String image) {
        this.id = id;
        this.nameplate = nameplate;
        this.image = image;
    }

    public HarmonyDto(Harmony harmony) {
        this.id = harmony.getId();
        this.nameplate = harmony.getNameplate();
        this.image = harmony.getImage();
        harmony.getProducts().forEach(prod -> this.products.add(new ProductDto(prod)));
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

    public Set<ProductDto> getProducts() {
        return products;
    }
}