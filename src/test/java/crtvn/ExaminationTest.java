package crtvn;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.hnieu.crtvn.dao.IClassroomDAO;
import com.hnieu.crtvn.dao.ICourseDAO;
import com.hnieu.crtvn.dao.IEtimeDAO;
import com.hnieu.crtvn.dao.IProfessionDAO;
import com.hnieu.crtvn.dao.IStudentDAO;
import com.hnieu.crtvn.entity.Classroom;
import com.hnieu.crtvn.entity.Course;
import com.hnieu.crtvn.entity.Etime;
import com.hnieu.crtvn.entity.Examination;
import com.hnieu.crtvn.entity.Profession;
import com.hnieu.crtvn.util.Reduction;
import com.hnieu.crtvn.vo.ClassroomVO;


public class ExaminationTest {

	@Autowired
	private IClassroomDAO classroomDAO;

	@Autowired
	private IProfessionDAO professionDAO;

	@Autowired
	private ICourseDAO courseDAO;

	@Autowired
	private IStudentDAO studentDAO;
	
	@Autowired
	private IEtimeDAO etimeDAO;

	@Test
	public void automatic() throws Exception {

		Map<String, Object> params = new HashMap<String, Object>();

		//考场信息
		List<Examination> examinationList = new ArrayList<>();
		
		/**
		 * 1、统计当前学院可用考场的座位数
		 */
		params.put("collegeId", 3);
		params.put("mark", 1); // 考场状态为1
		List<Classroom> classroomList = classroomDAO.findClassroomSeatsCount(params);
		long number = 0;
		for (int i = 0; i < classroomList.size(); i++) {
			number += classroomList.get(i).getNumber();
		}

		/**
		 * 2、统计当前学院每个课程的考试人数 即专业人数
		 */
		// 1)统计专业
		params.clear();
		params.put("collegeId", 3);
		List<Profession> professionList = professionDAO.findProfession(params);
		// 2)统计每个专业人数
		params.clear();
		Map<Integer, Integer> pSNMap = new HashMap<>();
		Integer professionId = 0;
		List<Integer> pSNList = new ArrayList<>();
		for (int i = 0; i < professionList.size(); i++) {
			professionId = professionList.get(i).getId();
			params.put("professionId", professionId);
			pSNMap.put(professionId, studentDAO.findStudentCount(params).size());
			pSNList.add(studentDAO.findStudentCount(params).size());
		}

		/**
		 * 3、选择考试人数最接近座位数的（不同专业的一个或多个未排课程）组合
		 * (默认选择不同专业最多和次最多的考试人数的考场，前提是人数不大于座位数； 如果都一样，按降序取)同时考，并选择时间(未使用的，取升序)。
		 */
		
		// 排序 降序
		Collections.sort(pSNList, new Comparator<Integer>() {
			@Override
			public int compare(Integer o1, Integer o2) {
				return o2 - o1;
			}
		});

		//已选专业
		List<Integer> pSes = new ArrayList<>();
		//选中下标
		List<Integer> indexList = new ArrayList<>();		
	
		if(pSNList.get(0) > number){ //座位数大于最大值，异常
			throw new Exception("座位数不足");
		}
		
		int sum = 0;
		for (int j = 0; j < pSNList.size(); j++) {						
			sum = pSNList.get(j);
			indexList.add(j);					
			if(sum == number){
				examinationList.addAll(addPIdKey(pSNMap, pSNList, pSes, indexList));
				indexList.clear();
				break;
			}		
			for (int k = pSNList.size() - 1 ; k >= 0; k-- ) {								
				sum += pSNList.get(k);					
				if (sum >= number) {
					break;
				}
				indexList.add(k);
			}
			examinationList.addAll(addPIdKey(pSNMap, pSNList, pSes, indexList));
			indexList.clear();
		}	
		
//		/*
//		 * 4、分配考场，根据科目人数，选择座位数最接近考试人数的未使用考场（一个或多个）
//		 */
//		Map<Integer,Integer> classroomMap = new HashMap<>();
//		ClassroomVO classroomVO = new ClassroomVO();
//		for(int i = 0;i < classroomList.size();i++){
//			classroomVO = classroomList.get(i);
//			classroomMap.put(classroomVO.getClassroomId(),classroomVO.getNumber());
//		}
	

		System.out.println(examinationList);
		
	}

	private List<Examination> addPIdKey(Map<Integer, Integer> pSNMap, List<Integer> pSNList, List<Integer> pSes,
			List<Integer> indexList) {
		List<Integer> pidList = new ArrayList<>(); //人数对应的所有专业
		List<Integer> pidSList = new ArrayList<>(); 
		
		List<Course> courseList = null;
		
		for (int i = 0; i < indexList.size(); i++) {
			pidList = getPIdKey(pSNMap, pSNList.get(indexList.get(i)));
			for(int j=0;j<pidList.size();j++){
				courseList = getCourseList(pidList.get(j));
				if(courseList != null && courseList.size()>0){
					pidList.removeAll(pSes);
					if (pidList.size() != 0) {
						pidSList.add(pidList.get(0));
						pSes.add(pidList.get(0));
					}
					break;
				}
			}			
		}

		return assCourse(pidSList,pSes);
	}

	private List<Examination> assCourse(List<Integer> pidSList,List<Integer> pSes){		
		
		List<Examination> examinationList = new ArrayList<>();
		
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("mark", 2);//未使用
		//时间
		List<Etime> etimeList = etimeDAO.findEtime(params);
		Etime etime = null;
		int count = 0;		
		Examination examination = null;
		List<Integer> pidList = new ArrayList<>();
		List<Course> courseList = null;
		Course course = null;
		etime = etimeList.get(count++);
		for(int i=0;i<pidSList.size();i++){	
			courseList = getCourseList(pidList.get(i));	
			course = courseList.get(0);
			
			examination.setEtime(etime);  //分配时间
			examination.setCourse(course); //分配科目
			examinationList.add(examination);
			
			etime.setMark(1);			
			course.setMark(1);
			
			etimeDAO.updateEtime(etime);
			courseDAO.updateCourse(course);		
			
			courseList = getCourseList(pidList.get(i));	
			if(courseList == null || courseList.size() == 0 ){
				pSes.remove(pidList.get(i));
			}
			
		}		

		return examinationList;
	}
	
	private List<Integer> getPIdKey(Map<Integer, Integer> map, Integer value) {
		List<Integer> keyList = new ArrayList<>();
		for (Integer key : map.keySet()) {
			if (map.get(key).equals(value)) {
				keyList.add(key);
			}
		}
		return keyList;
	}
	
	private List<Course> getCourseList(Integer professionId){
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("professionId", professionId);
		params.put("mark", 2); //未安排
		
		return courseDAO.findCourseByPId(params);			
	}
	
	@Test
	public void test05(){
		Reduction reduction = new Reduction();
		try {
			reduction.revert();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}
