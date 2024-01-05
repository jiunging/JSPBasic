package com.example.servlet;

import java.util.Arrays;
import java.util.List;
import java.util.*;

public class um {

	public static void main(String[] args) {
		
		String[] participant = {"leo", "kiki", "eden"};
		String[] completion = {"eden", "kiki"};
		
		List<String> list = new ArrayList<>(Arrays.asList(participant));
		List<String> list2 = new ArrayList<>(Arrays.asList(completion));
		
		boolean bool = false;
		for(int i = 0; i < list.size(); i++) {
			bool = false;
			for(int j = 0; j < list2.size(); j++) {
				if(list.get(i).equals(list2.get(j))) {
					bool = true;
				}
			}
			
			if(bool == false) {
				list.remove(i);
			}
			
		}
		System.out.println(list);
		
		
		

	}

}
