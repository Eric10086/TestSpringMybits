package service.impl;

import beans.Student;
import dao.StudentDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.StudentService;

import java.util.List;

@Service
public class StudentServiceImpl implements StudentService {

    /**
     * 定义引用的Dao
     */
    @Autowired
    private StudentDao stuDao;

    @Override
    public int addStudent(Student student) {
        int rows = stuDao.insertStudent(student);
        return rows;
    }

    @Override
    public List<Student> queryStudent() {
        List<Student> students = stuDao.selectStudents();
        return students;
    }
}
