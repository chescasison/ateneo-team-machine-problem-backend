package com.onb.ateneomp.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.onb.ateneomp.model.Course;

@Repository
public interface CourseRepository extends CrudRepository<Course, Integer> {

}
