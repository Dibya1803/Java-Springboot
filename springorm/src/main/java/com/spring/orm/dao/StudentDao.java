/*
 * package com.spring.orm.dao;
 * 
 * import javax.transaction.Transactional;
 * 
 * import org.springframework.orm.hibernate5.HibernateTemplate;
 * 
 * import com.spring.orm.entities.Student;
 * 
 * public class StudentDao {
 * 
 * 
 * private HibernateTemplate hibernateTemplate;
 * 
 * //Save Student
 * 
 * @Transactional public int insert(Student student) {
 * 
 * //insert Integer i= (Integer) this.hibernateTemplate.save(student); return i;
 * }
 * 
 * 
 * public HibernateTemplate getHibernateTemplate() { return hibernateTemplate; }
 * 
 * 
 * public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
 * this.hibernateTemplate = hibernateTemplate; } }
 */

package com.spring.orm.dao;

import java.util.List;

import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.transaction.annotation.Transactional;

import com.spring.orm.entities.Student;

public class StudentDao {
    
    private HibernateTemplate hibernateTemplate;
    
    @Transactional
    public int insert(Student student) {
        Integer i = (Integer) this.hibernateTemplate.save(student);
        return i;
    }
    
    //get the single data(object)
    public Student getStudent(int studentId)
    {
    	Student student = this.hibernateTemplate.get(Student.class, studentId);
    	return student;
    }
    
    //get all students(all rows)
    public List<Student> getAllStudents()
    {
    	List<Student> students = this.hibernateTemplate.loadAll(Student.class);
    	return students;
    }
    
    //Updating Data
    @Transactional
    public void updateStudent(Student student)
    {
    	this.hibernateTemplate.update(student);
    }
    
    //Deleting the Data
    @Transactional
    public void deleteStudent(int studentId)
    {
    	Student student = this.hibernateTemplate.get(Student.class, studentId);
    	this.hibernateTemplate.delete(student);
    }

    public HibernateTemplate getHibernateTemplate() {
        return hibernateTemplate;
    }

    public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
        this.hibernateTemplate = hibernateTemplate;
    }
}


