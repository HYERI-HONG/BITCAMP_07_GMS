package service;
import java.util.List;

import domain.*;

public class ExamServiceImpl implements ExamService{
	private static ExamService instance = new ExamServiceImpl();
	public static ExamService getInstance() {return instance;
	}
	private ExamServiceImpl() {}
	
	@Override
	public void createExam(ExamBean exam) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<ExamBean> ExamList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ExamBean> findByWord(String word) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ExamBean findBySeq(String seq) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int countExam() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void updateExam(ExamBean exam) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deleteExam(ExamBean exam) {
		// TODO Auto-generated method stub
		
	}
}
