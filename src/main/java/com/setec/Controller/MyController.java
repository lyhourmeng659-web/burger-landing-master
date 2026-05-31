package com.setec.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.setec.entities.Category;
import com.setec.entities.Food;
import com.setec.repos.FoodRepo;

@Controller
public class MyController {
    @Autowired
    private FoodRepo foodRepo;

    // http://localhost:8080/home
    @GetMapping({ "/", "home" })
    public String home(Model model) {
        // List<Food> foods = foodRepo.findAll();
        // System.err.print(foods.size());

        List<Food> mains = foodRepo.findByCategory(new Category(1));
        List<Food> desserts = foodRepo.findByCategory(new Category(2));
        List<Food> drinks = foodRepo.findByCategory(new Category(3));
        List<Food> happyHours = foodRepo.findByCategory(new Category(4));

        model.addAttribute("mains", mains);
        model.addAttribute("desserts", desserts);
        model.addAttribute("drinks", drinks);
        model.addAttribute("happyHours", happyHours);

        // System.err.println(mains.size());
        // System.err.println(desserts.size());
        // System.err.println(drinks.size());
        // System.err.println(happyHours.size());
        return "index";
    }
}
