package com.onb.ateneomp.application;

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
		return sectionRepository.findById(sectionId).get();
	}

}
