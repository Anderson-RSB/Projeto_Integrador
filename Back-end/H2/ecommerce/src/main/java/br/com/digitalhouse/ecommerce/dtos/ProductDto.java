package br.com.digitalhouse.ecommerce.dtos;

import br.com.digitalhouse.ecommerce.entities.Product;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

public class ProductDto implements Serializable {
    public static final long serialVersionUID = 1L;

    private Integer id;

    private String title;

    private String description;

    private String image;

    private Double price;

    private Set<CategoryDto> categories = new HashSet<>();

    private Set<HarmonyDto> harmonies = new HashSet<>();

    public ProductDto() {
    }

    public ProductDto(String title, String description, String image, Double price) {
        this.title = title;
        this.description = description;
        this.image = image;
        this.price = price;
    }

    public ProductDto(Product product) {
        id = product.getId();
        title = product.getTitle();
        description = product.getDescription();
        image = product.getImage();
        price = product.getPrice();
        product.getCategories().forEach(categories -> this.categories.add(new CategoryDto(categories)));
        product.getHarmonies().forEach(harmonies -> this.harmonies.add(new HarmonyDto(harmonies)));
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Set<CategoryDto> getCategories() {
        return categories;
    }

    public Set<HarmonyDto> getHarmonies() {
        return harmonies;
    }

}