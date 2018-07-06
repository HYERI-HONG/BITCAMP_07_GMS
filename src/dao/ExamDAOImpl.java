package dao;

import java.util.List;

import domain.ExamBean;

public class ExamDAOImpl implements ExamDAO{

	private static ExamDAO  instance;
	public static ExamDAO getInstance() {return instance;}
	private ExamDAOImpl() {}
	
	@Override
	public void insertExam(ExamBean exam) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<ExamBean> selectAllExam() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<ExamBean> selectExamByWord(String word) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ExamBean selectExamBySeq(String seq) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int examCount() {
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
