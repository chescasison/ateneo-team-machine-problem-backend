package com.onb.ateneomp.application;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.onb.ateneomp.model.Term;
import com.onb.ateneomp.repository.TermRepository;

@Service
public class TermServiceImpl implements TermService{
	
	@Autowired
	private TermRepository termRepository;
	
	@Override
	public Term getTerm(int termId) {
		return termRepository.findById(termId).get();
	}

}
