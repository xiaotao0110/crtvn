package com.hnieu.crtvn.dao;

import java.util.List;
import java.util.Map;

import com.hnieu.crtvn.entity.Exam;

public interface IExamDAO {
	
	void saveExam(Exam exam);
	
	List<Exam> findExamByEId(Map<String,Object> params);
	
	List<Exam> findExamByPage(int pageNo,int pageSize,Map<String,Object> params);
	
	long findExamCountByGrid(Map<String, Object> params);
	
	void flushExam();
    
    void clearExam();
    
    void commitExam();
    
    void startTExam();
    
    void truncateExam(); 
    
    void deleteExam(Exam exam);
}
