package com.setec.repos;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.setec.entities.Category;
import com.setec.entities.Food;

public interface FoodRepo extends JpaRepository<Food, Integer> {

    List<Food> findByCategory(Category category);
}
