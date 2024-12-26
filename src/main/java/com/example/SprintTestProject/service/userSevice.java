package com.example.SprintTestProject.service;


import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.SprintTestProject.entity.Users;
import com.example.SprintTestProject.repository.UserRepository;

@Service//Component//Repository
public class userSevice {

    @Autowired
    UserRepository userRepository;

    public void save(Users user) {
        userRepository.save(user);
    }

    public List<Users> getAllUsers(){
        return userRepository.findAll();
    }

    public Optional<Users> getUsereById(int id){
        return userRepository.findById(id);
    }

    public void deleteUser(int id){
        userRepository.deleteById(id);
    }
}
