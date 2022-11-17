package com.onb.ateneomp.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.onb.ateneomp.model.Student;

@Repository
public interface StudentRepository extends CrudRepository<Student, Integer>{
	
	@Query(value = "SELECT s.degree_program_id FROM student s WHERE s.id = ?1 " , nativeQuery = true)
	int getDegreeIdOfStudent(int studentId);
}
