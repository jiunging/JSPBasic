package com.example.servlet;

public class um {

	public static void main(String[] args) {
		String a = "178";
		String b = "76";
		
		int height = Integer.parseInt(a);
		int weight = Integer.parseInt(b);
		
		System.out.println(height);
		System.out.println(weight);
		int bmi = (weight * ((height / 100) * (height / 100)));
		System.out.println("------------------------");
		System.out.println((double)((height / 100) * (height / 100)));
		System.out.println((double)(height / 100) + (height % 100 * 0.01));
		System.out.println((double)(weight / (((height / 100) + (height % 100 * 0.01)) * ((height / 100) + (height % 100 * 0.01)))));

	}

}
