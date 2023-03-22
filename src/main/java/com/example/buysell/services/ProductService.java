package com.example.buysell.services;


import com.example.buysell.models.Product;
import com.example.buysell.repositories.ProductRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service //это просто бин, компонент
@Slf4j //логи
@RequiredArgsConstructor
public class ProductService {
    private final ProductRepository productRepository; // можно с аннотацией @Autowired , можно просто  private final

    public List<Product> listProducts(String title) {
        if (title != null) return productRepository.findByTitle(title); //проверка
        return productRepository.findAll();
    }

    public void saveProduct(Product product) {
        log.info("Saving new {}", product); //добавим логи, у нас есть метод toString - он вставит сюда строку {}
        productRepository.save(product);
    }

    public void deleteProduct(Long id) {
        productRepository.deleteById(id); //встроенный метод deleteById
    }

    public Product getProductById(Long id) {
        return productRepository.findById(id).orElse(null); //встроенный метод dfindById, если товар не найден вернуть null
    }
}