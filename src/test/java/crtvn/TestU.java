package crtvn;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

import com.hnieu.crtvn.entity.Student;

public class TestU {
	public static void main(String args[]) {
//        List<Integer> list = new ArrayList<>();
//        for(int i=0;i<10;i++){
//        	list.add(i,0);
//        }
//        list.add(5,9);
//        
//		List<Student> list = new ArrayList<>();
//        Student student = new Student();
//        student.setId(1);
//        list.add(student);
//        Student student2 = new Student();
//        student.setId(1);
//        System.out.println(list.contains(student2));
//		
//		 List<Integer> list = new ArrayList<>();
//		 List<Integer> list2 = new ArrayList<>();
//		 list.add(5); list.add(4); list.add(3); list.add(5);
//		 Set<Integer> set = new HashSet<>();
//		 set.addAll(list);
//		 
//		 list2.addAll(set);
//		 System.err.println(set);
//		 System.err.println(list2);
		
		 String str="4,5,8,3";
		 String[] s = str.split(",");
		 List<Integer> atrr = new ArrayList<>();
		 for(int i=0;i<s.length;i++){
			 atrr.add(Integer.parseInt(s[i]));
		 }
		 System.out.println(atrr);
		 
    }
 
	public static void t(List<Integer> list) {
		
		
		
	}
	
	
	public static void group(String s, List<Integer> list, int n) {
	    if (n == 0) {
	        System.out.println(s);
	    } else {
	        for (int i = 0; i < list.size(); ++i) {
	            Integer integer = list.get(i);
	            int length = s.length();
	            //限定前面的数比后面的小，用来去重复，例如 1 2 和2 1 
	            if(length != 0 && s.charAt(length - 1) > integer + '0'){
	                continue;
	            }
	            List<Integer> temp = new LinkedList<>(list);
	            Integer remove = temp.remove(i);
	            group(s + remove, temp, n - 1);
	            temp = null;
	        }
	    }
	}
}
