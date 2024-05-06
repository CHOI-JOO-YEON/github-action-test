package com.example.githubactiontest.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/con")
public class Controller {
    @GetMapping("/")
    ResponseEntity<?> get(){
        return new ResponseEntity<>("안녕", HttpStatus.OK);
    }

}
