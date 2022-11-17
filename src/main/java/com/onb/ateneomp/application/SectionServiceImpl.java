package com.onb.ateneomp.application;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.onb.ateneomp.model.Section;
import com.onb.ateneomp.repository.SectionRepository;

@Service
public class SectionServiceImpl implements SectionService{

	@Autowired
	private SectionRepository sectionRepository;
	
	@Override
	public Section getSection(int sectionId) {
		Optional<Section> section = sectionRepository.findById(sectionId);
		if (section.isPresent()) return section.get();
		else throw new IllegalArgumentException("Section does not exist.");
	}

}
