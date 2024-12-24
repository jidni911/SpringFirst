package com.example.SprintTestProject.service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.SprintTestProject.entity.Users;
import com.example.SprintTestProject.repository.UserRepository;

@Service//Component//Repository
public class userSevice {

    @Autowired
    UserRepository userRepository;

    public void add(Users user) {
        userRepository.save(user);
    }
}
