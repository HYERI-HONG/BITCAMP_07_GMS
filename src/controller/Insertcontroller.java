package controller;

import javax.swing.JOptionPane;
import domain.*;
import service.*;

enum Butt{
	EXIT,
	INSERT_INFO,
	INSERT_SCORE
}

public class Insertcontroller {
	private static Insertcontroller instance = new Insertcontroller();
	public static Insertcontroller getInstance() {return instance;}
	private Insertcontroller() {}
	public static void main(String[] args) {
		Butt[] buttons = {
				Butt.EXIT,
				Butt.INSERT_INFO,
				Butt.INSERT_SCORE
				
		};
	
		while(true) {
			switch((Butt)JOptionPane.showInputDialog(null,
					"GMS","선택지를 고르세요",JOptionPane.QUESTION_MESSAGE,null,
					buttons,buttons[1])) {
			case EXIT:
				return;
			case INSERT_INFO :
				//ExamServiceImpl.getInstance().setMemId(JOptionPane.showInputDialog("MEMBER ID : "));
				//exam.setMemId(JOptionPane.showInputDialog("EXAM MONTH : "));
				break;
			case INSERT_SCORE :
				//exam.setScore(JOptionPane.showInputDialog("JAVA/SQL/R/HTML/PYTHON\nSCORE :"));
				break;
			}
		}
	}
}
