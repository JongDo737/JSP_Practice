package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;

import beans.UserBean;

public class UserDao {

	private final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
	private final String URL = "jdbc:mysql://localhost:3306/blog?serverTimezone=Asia/Seoul&characterEncoding=UTF-8";
	private final String USER = "root";
	private final String PASS = "asd1234";

	public UserDao() {
		try {
			Class.forName(JDBC_DRIVER);
		} catch (ClassNotFoundException e) {
			System.out.println("error : 드라이버 로딩 실패");
		}
	}

	public Vector<UserBean> getUserBean() {
		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;

		Vector<UserBean> vList = new Vector<UserBean>();

		try {
			String sql = "select * from user";
			connection = DriverManager.getConnection(URL, USER, PASS);
			stmt = connection.createStatement();
			rs = stmt.executeQuery(sql);

			while (rs.next()) {

				UserBean bean = new UserBean();

				bean.setId(rs.getString("id"));
				bean.setUsername(rs.getString("username"));
				bean.setPassword(rs.getString("password"));
				bean.setEmail(rs.getString("email"));
				bean.setCreateDate(rs.getString("createDate"));

				vList.addElement(bean);
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if (stmt != null) {
				try {
					stmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if (connection != null) {
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

	// 회원가입 기능
	public int save(UserBean dto) {
		Connection connection = null;
//		Statement stmt = null; // --> 변경 (정적인 쿼리문을 만들어주는 녀석) 기본;;;
		PreparedStatement pstmt = null;
		ResultSet rs = null; 
		
		
		try {
//			String sql = "insert into user(username, password, email, userRole, createDate"
//					+"values("+dto.getUsername()+");  -->> 불편

			String sql = "INSERT INTO user(username, password, email, userRole, createDate)"
					+ " VALUES(?, ?, ?, 'USER', now())";

			connection = DriverManager.getConnection(URL, USER, PASS);
			pstmt = connection.prepareStatement(sql); // 이거도 바꿔줘야함

			pstmt.setString(1, dto.getUsername()); // 1은 Values 첫번째 값
			pstmt.setString(2, dto.getPassword());
			pstmt.setString(3, dto.getEmail());

			// 정상등록되면 1이 리턴된다.
			int result = pstmt.executeUpdate(); // 쿼리문을 실행
			// insert, delete, update할때 db 상태 변경 --->> executeUpdate()
			// select 할때는 executequery() 하면 됌
			System.out.println(result);
			return result;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if (connection != null) {
				try {
					connection.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		// 실패하면 -1반환
		return -1;
	}
	
	//회원가입 기능
	public UserBean login(String username, String password) {
		
		Connection connection = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null; 
		

		try {
			String sql = "select id, username, email, createDate from user where username = ? and password = ?";

			connection = DriverManager.getConnection(URL, USER, PASS);
			pstmt = connection.prepareStatement(sql);
			System.out.println(username);
			System.out.println(password);
			pstmt.setString(1, username); 
			pstmt.setString(2, password);
			
			System.out.println("응답 성공 1");
			rs = pstmt.executeQuery();
			System.out.println("응답 성공 2");
			
			if(rs.next()) { // rs.next() --> 값이 있으면 true 없으면 false
				System.out.println("응답 성공 3");
				UserBean dto = new UserBean();
				dto.setId(rs.getString("id"));
				dto.setUsername(rs.getString("username"));
				dto.setEmail(rs.getString("email"));
				dto.setCreateDate(rs.getString("createDate"));
				
				return dto;
			}
			
			
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if (pstmt != null) {
				try {
					pstmt.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if (connection != null) {
				try {
					connection.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		// 실패하면 null반환
		return null;
	}

}
