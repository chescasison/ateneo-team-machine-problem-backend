package com.onb.ateneomp.application;

import java.io.File;
import java.io.FileNotFoundException;
import java.sql.SQLException;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.ResourceUtils;

import com.onb.ateneomp.model.EnrollmentAssessmentObject;
import com.onb.ateneomp.repository.EnrollmentRepository;

import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;

@Service
public class EnrollmentAssessmentFormService {
	
	@Autowired
	private EnrollmentRepository enrollmentRepository;
	
//	@Autowired
//	private DataSource datasource;
	
	public String exportReport() throws FileNotFoundException, JRException, SQLException {
		String outputPath = "/home/francesca/Documents/Ateneo Jasper Reports";
		int studentId = 4; //TODO: get currently logged in student
		Collection<EnrollmentAssessmentObject> enrollmentAssessmentObject = enrollmentRepository.getEnrollmentAssessmentOfStudent(studentId);
		File jasperXmlFile = ResourceUtils.getFile("classpath:enrollmentAssessmentForm.jrxml");
		JasperReport jasperReport = JasperCompileManager.compileReport(jasperXmlFile.getAbsolutePath());
		JRBeanCollectionDataSource datasource = new JRBeanCollectionDataSource(enrollmentAssessmentObject);
		Map<String, Object> parameters = new HashMap<>();
		parameters.put("createdBy", "current user");
		JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport, parameters, datasource);
		JasperExportManager.exportReportToPdfFile(jasperPrint, outputPath + "enrollment-assessment-form.pdf");

		return "Successfully exported enrollment assessment form.";
	}
}
