package com.hnieu.crtvn.util;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public class MapSortUtil {

	 /**
     * 使用 Map按value进行排序
     * @param map
     * @return
     */
    public static Map<Integer, Integer> sortMapByValue(Map<Integer, Integer> oriMap,MapSort mapSort) {
        if (oriMap == null || oriMap.isEmpty()) {
            return null;
        }
        Map<Integer, Integer> sortedMap = new LinkedHashMap<Integer, Integer>();
        List<Map.Entry<Integer, Integer>> entryList = new ArrayList<Map.Entry<Integer, Integer>>(
                oriMap.entrySet());
        
        if(mapSort.equals(MapSort.ASC)){
        	Collections.sort(entryList, new MapValueAscComparator());
        }else if(mapSort.equals(MapSort.DESC)){
        	Collections.sort(entryList, new MapValueDescComparator());
        }        

        Iterator<Map.Entry<Integer, Integer>> iter = entryList.iterator();
        Map.Entry<Integer, Integer> tmpEntry = null;
        while (iter.hasNext()) {
            tmpEntry = iter.next();
            sortedMap.put(tmpEntry.getKey(), tmpEntry.getValue());
        }
        return sortedMap;
    }
} 

class MapValueAscComparator implements Comparator<Map.Entry<Integer, Integer>> {

    @Override
    public int compare(Entry<Integer, Integer> me1, Entry<Integer, Integer> me2) {

        return me1.getValue().compareTo(me2.getValue());
    }
}


class MapValueDescComparator implements Comparator<Map.Entry<Integer, Integer>> {

    @Override
    public int compare(Entry<Integer, Integer> me1, Entry<Integer, Integer> me2) {

        return me2.getValue().compareTo(me1.getValue());
    }
}
