package controllers;

import beans.Student;
import beans.Pages;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import service.StudentService;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/stu")
public class StudentController {

    @Autowired
    private StudentService studentService;

    @RequestMapping("/index")
    public String studentindex(String target){
        return target;
    }

    //学生的添加方法
    @RequestMapping("/addStudent.do")
    public ModelAndView addStudent(Student student){
        ModelAndView mv = new ModelAndView();
        int rows = studentService.addStudent(student);

        if (rows>0){
            mv.addObject("msg","添加成功");
            mv.setViewName("success");
        }else {
            mv.addObject("msg","添加失败");
            mv.setViewName("fail");
        }

        return mv;
    }

    //查询TagParams Request
    @ResponseBody
    @RequestMapping("/quseryStudents.do")
    public List<Student> quseryStudents(Pages pages){
        System.out.println(pages);
        List<Student> list = studentService.queryStudent();
        if (list==null){
            list=new ArrayList<>();
        }
        return list;
    }

    //删除
    @ResponseBody
    @RequestMapping("/delStudents.do")
    public int delStudents(int id){
        Integer rows= studentService.delStudent(id);
        return rows;
    }

    //更新
    @ResponseBody
    @RequestMapping("/updateStudent.do")
    public int updateStudent(Student student){
        Integer rows= studentService.updateStudent(student);
        return rows;
    }
}
