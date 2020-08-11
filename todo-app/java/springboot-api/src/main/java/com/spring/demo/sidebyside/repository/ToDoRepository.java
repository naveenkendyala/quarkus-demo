package com.spring.demo.sidebyside.repository;

import com.spring.demo.sidebyside.entity.ToDo;

import org.springframework.data.jpa.repository.JpaRepository;


public interface ToDoRepository extends JpaRepository<ToDo, Integer>{

}