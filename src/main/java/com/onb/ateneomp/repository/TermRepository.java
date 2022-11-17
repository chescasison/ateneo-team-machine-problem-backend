package com.onb.ateneomp.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.onb.ateneomp.model.Term;

@Repository
public interface TermRepository extends CrudRepository<Term, Integer>{

}
