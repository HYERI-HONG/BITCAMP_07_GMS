package test;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class JDBC {

	public static void main(String[] args){
		//Connection conn = new Connection(); 에러가 나는 경우 : 인터페이스인 경우, 생성자에 파라메터값이 있는 경우, 자바 동적 클래스 생성,reflection
		//Connection conn = DriverManager.getConnection(null);
		//싱글톤
		//오류 해결 방법1 : add throws declaration -> 예외를 다른 클래스로 떠넘기는것
		//오류 해결 방법2 : surrounded with try/catch ->예외 처리할 때 사용
		
		try {//문제가 발생해도 무조건 실행
			Class.forName("oracle.jdbc.driver.OracleDriver"); //내가 나를 보고 있는것, class파일이 없는 instance
			//기존의 객체 생성 방법 : 생성자에 의한 객체 생성, 싱글톤에 의한 객체 생성
			//"확장자.패키지이름.클래스이름"
			Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","HRHONG", "HRHONG"); //하드디스크에 있는 메니저와 연결, 연결, 아이디, 비번
			Statement stmt = conn.createStatement(); //factory pattern
			ResultSet rs = stmt.executeQuery("SELECT * FROM TAB"); //db가 던져준 결과 막 넣어 가져온다.
			List<String> list = new ArrayList<>();
			while(rs.next()){
				list.add(rs.getString("TNAME"));
			}
			System.out.println("테이블갯수 :"+list);
			
		} catch (SQLException e) {
			System.out.println("예외 발생");
			e.printStackTrace();
		} catch (ClassNotFoundException e) {

			e.printStackTrace();
		} 
		
		
		
		//에러 : 컴파일 에러
		//Warning : 메모리 공간 낭비
		//Exception : 규칙을 따르지 않는것
	}

}
