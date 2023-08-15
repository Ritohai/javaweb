package rikkei.academy.Service;

import rikkei.academy.Model.Student;

import java.util.List;

public interface IstudentService {
    List<Student> findAll();

    Student findById(Long id);

}
