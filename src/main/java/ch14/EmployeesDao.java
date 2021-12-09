package ch14;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;

public class EmployeesDao {
	
	private final String JDBC_DRIVER ="com.mysql.cj.jdbc.Driver";
	private final String URL= "jdbc:mysql://localhost:3306/employees?serverTimezone=Asia/Seoul&characterEncoding=UTF-8";
	private final String USER ="root";
	private final String PASS = "asd1234";
	
	public EmployeesDao() {
		try {
			Class.forName(JDBC_DRIVER);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public Vector<EmployeesBean> getEmployees(){
		
		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		Vector<EmployeesBean> vList = new Vector<EmployeesBean>();
		
		try {
			connection = DriverManager.getConnection(URL,USER,PASS);
			stmt = connection.createStatement();
			rs =stmt.executeQuery("select * from employees limit 10");
			
			
			while(rs.next()) {
				EmployeesBean bean = new EmployeesBean();
				bean.setEmp_no(rs.getInt("emp_no"));
				bean.setBirth_date(rs.getString("birth_date"));
				bean.setFirst_name(rs.getString("first_name"));
				bean.setLase_name(rs.getString("last_name"));
				bean.setGender(rs.getString("gender"));
				bean.setHire_date(rs.getString("hire_date"));
				
				vList.addElement(bean);
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(stmt != null) {
			try {
				stmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(rs != null) {
			try {
				rs.close();
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
