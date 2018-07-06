package controller;

import javax.swing.JOptionPane;
import domain.*;
import service.*;
import java.util.*;


public class ExamController {
	private static ExamController instance = new ExamController();
	public static ExamController getInstance() {return instance;}
	private ExamController() {}
	
	
	public static void main(String[] args) {
		ExamBean exam = null;
		while(true) {
			
			//MemberBean mem = new MemberBean();
			switch(JOptionPane.showInputDialog("0 : Exit, 1 : 정보입력, 2 : 성적 입력")) {
			case "0" :
				return;
			case "1" :
				exam = new ExamBean();
				//MemberServiceImpl.getInstance().memberList();
				//String[] arr = JOptionPane.showInputDialog("이름/월").split("/");
				//exam.setMonth(arr[1]);
				/*List<MemberBean> list = MemberServiceImpl.getInstance().findByName(arr[0]);
				if(list.size()==0) {
					System.out.println("해당 이름의 학생이 없습니다.");
				}else if(list.size()==1) {
					exam.setMemId(list.get(0).getMemId());
				}else {
					System.out.println(list);
				}*/
				exam.setMonth("7");
				exam.setMemId("h1");
				break;
			case "2" :
				exam.setScore(JOptionPane.showInputDialog("JAVA/SQL/R/HTML5/PYTHON"));
				ExamServiceImpl.getInstance().createExam(exam);
				break;
			}
		}
	}
}
