package com.example.buysell.repositories;


import com.example.buysell.models.Product;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

//При добавлении зависимости Jpa, подлучаем досутп к репозиторию, чтобы не прописывать свои классы и логику с базами данных
// получаем функционал "коробки" (методы сохранить в базе данных, удалить, просмотреть, просмотреть по id)

public interface ProductRepository extends JpaRepository<Product, Long> {
    List<Product> findByTitle(String title);
}