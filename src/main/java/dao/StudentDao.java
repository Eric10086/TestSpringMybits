package dao;

import beans.Student;

import java.util.List;

public interface StudentDao {
    int insertStudent(Student student);
    List<Student> selectStudents();
    int delStudent(Integer id);
    int updateStudent(Student student);

}
