package com.onb.ateneomp.repository;

import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.onb.ateneomp.model.Section;

@Repository
public interface SectionRepository extends CrudRepository<Section, Integer> {
	
	public Optional<Section> findById(Integer id);
}
