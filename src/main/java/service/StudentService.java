package service;

import beans.Student;

import java.util.List;

public interface StudentService {
    int addStudent(Student student);
    List<Student> queryStudent();
    int delStudent(Integer id);
    int updateStudent(Student student);
}
