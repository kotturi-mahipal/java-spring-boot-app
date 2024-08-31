package com.tdevs.dockermastery.dto;


import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@Getter
@Setter
public class TodoDTO {
    private Integer id;
    private String title;
    private String description;
    private String status;
}