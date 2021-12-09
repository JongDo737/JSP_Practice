package ch14;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;

public class MemberDao {

	private final String JDBC_DRIVER ="com.mysql.cj.jdbc.Driver";
	private final String URL= "jdbc:mysql://localhost:3306/shopdb?serverTimezone=Asia/Seoul&characterEncoding=UTF-8";
	private final String USER ="root";
	private final String PASS = "asd1234";
	
	public MemberDao(){
		try {
			Class.forName(JDBC_DRIVER);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public Vector<MemberBean> getMemberList(){
		
		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		Vector<MemberBean> vList = new Vector();
		
		try {
			connection = DriverManager.getConnection(URL,USER,PASS);
			stmt = connection.createStatement();
			rs = stmt.executeQuery("select * from membertbl");
			
			while(rs.next()) {
				MemberBean bean = new MemberBean();
				bean.setMemberID(rs.getString("memberID"));
				bean.setMemberName(rs.getString("memberName"));
				bean.setMemberAddress(rs.getString("memberAddress"));
				
				vList.addElement(bean);
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(rs!= null) {
			try {
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(stmt != null) {
			try {
				stmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(connection != null) {
			try {
				connection.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		return vList;
		
		
	}
	
	
}
