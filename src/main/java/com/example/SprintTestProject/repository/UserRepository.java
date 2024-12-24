package com.example.SprintTestProject.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.SprintTestProject.entity.Users;

public interface UserRepository extends JpaRepository<Users, Integer> {

}
