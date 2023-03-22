package com.example.buysell.models;


import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

//модель которая будет отображаться в базе данных
@Entity
@Table(name = "products")
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Product {
        @Id
        @GeneratedValue(strategy = GenerationType.AUTO)
        @Column(name = "id")
        private Long id;
        @Column(name = "title")
        private String title;
        @Column(name = "description", columnDefinition = "text")
        private String description;
        @Column(name = "price")
        private int price;
        @Column(name = "city")
        private String city;
        @Column(name = "author")
        private String author;

        @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, //один продукт ко многим фото. ALL - при удалении товара - должны удалиться все фото
                mappedBy = "product")  //ссылаемся, что товар связанный с фото будет связан и записан в таблице images
        private List<Image> images = new ArrayList<>();
        private Long previewImageId;
        private LocalDateTime dateOfCreated; // знать время когда определенный товар был создан

        @PrePersist
        private void init() {
                dateOfCreated = LocalDateTime.now();
        }

        public void addImageToProduct(Image image) {
                image.setProduct(this);
                images.add(image);
        }
}

