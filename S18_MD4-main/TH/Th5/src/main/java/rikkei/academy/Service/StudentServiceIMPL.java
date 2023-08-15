package rikkei.academy.Service;

import org.springframework.stereotype.Service;
import rikkei.academy.Model.Student;

import java.util.ArrayList;
import java.util.List;

@Service
public class StudentServiceIMPL implements IstudentService {
    public static List<Student> students = new ArrayList<>();

    static {
        students.add(new Student(1L, "Chinh ND", "chinhnd2@rikkeisoft.com", "Hai Duong"));
        students.add(new Student(2L, "DungLV", "dunglv@rikkeisoft.com", "Phu Tho"));
        students.add(new Student(3L, "Max Hai", "hai@rikkeisoft.com", "Quang Ninh"));
    }

    @Override
    public List<Student> findAll() {
        return students;
    }

    @Override
    public Student findById(Long id) {
        return students.get(Math.toIntExact(id));
    }
}
