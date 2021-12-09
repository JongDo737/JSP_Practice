package ch14;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;

public class RegisterDao {
	
	private final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
	private final String JDBC_URL = "jdbc:mysql://localhost:3306/shopdb?serverTimezone=Asia/Seoul&characterEncoding=UTF-8";
	private final String JDBC_USER = "root";
	private final String JDBC_PASS = "asd1234";
	
	//생성자
	public RegisterDao() {
		try {
			Class.forName(JDBC_DRIVER);
		} catch (ClassNotFoundException e) {
			System.out.println("Error : JDBC 로딩 실패");
		}
	}
	// 메서드 - 회원정보 리스트를 가져오는 기능
	//vector arraylist 계열
	public Vector<RegisterBean> getRegisterList(){
		
		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		Vector<RegisterBean> vList = new Vector <RegisterBean>();
		
		try {
			connection = DriverManager.getConnection(JDBC_URL,JDBC_USER,JDBC_PASS);
			stmt = connection.createStatement();
			rs = stmt.executeQuery("select * from tblregister");
			
			while(rs.next()) {
				RegisterBean bean = new RegisterBean();
				bean.setId(rs.getString("id"));
				bean.setPwd(rs.getString("pwd"));
				bean.setName(rs.getString("name"));
				bean.setNum1(rs.getString("num1"));
				bean.setNum2(rs.getString("num2"));
				bean.setEmail(rs.getString("email"));
				bean.setPhone(rs.getString("phone"));
				bean.setZipcode(rs.getString("zipcode"));
				bean.setAddress(rs.getString("address"));
				bean.setJob(rs.getString("job"));
				
				vList.addElement(bean);
				
			}
			
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			if(rs!= null) {
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if(stmt!= null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if(connection!= null) {
				try {
					connection.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		
		
		return vList;
	}
	
}
