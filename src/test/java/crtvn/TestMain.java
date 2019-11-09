package crtvn;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

import org.junit.Test;

import com.hnieu.crtvn.util.MapSort;
import com.hnieu.crtvn.util.MapSortUtil;

public class TestMain {
	
	@Test
	public void test01(){
		
		Map<Integer, Integer> map = new TreeMap<Integer, Integer>();

        map.put(1, 15);
        map.put(9, 95);
        map.put(3, 2);
        map.put(0, 3);

        map=MapSortUtil.sortMapByValue(map, MapSort.DESC);
        
        for (Map.Entry<Integer, Integer> entry : map.entrySet()) { 
        	  System.out.println("Key = " + entry.getKey() + ", Value = " + entry.getValue()); 
        }
       
        map=MapSortUtil.sortMapByValue(map, MapSort.ASC);
        
        for (Map.Entry<Integer, Integer> entry : map.entrySet()) { 
        	  System.out.println("Key = " + entry.getKey() + ", Value = " + entry.getValue()); 
        }
	}
	
	
	@Test
	public void test02(){
//		MapSort other =MapSort.DESC;
//		System.out.println(MapSort.DESC.equals(other));
		List list = new ArrayList<>(20);
		list.add(1);
		list.add(3);
		list.add(5);
		list.add(6);
		list.add(4);
		
		List list2 = new ArrayList<>(20);
		list2.add(1);
		list2.add(3);
		list2.add(5);
		list2.add(6);
		list2.add(4);
//		Collections.sort(list, new Comparator<Integer>() {
//
//			@Override
//			public int compare(Integer o1, Integer o2) {
//				// TODO Auto-generated method stub
//				return o2-o1;
//			}
//			
//		});
		list.removeAll(list2);
		System.out.println(list);
	}
	
	
	@Test
	public void test03(){
		
		
	}
}
