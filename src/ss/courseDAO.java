package ss;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class courseDAO {

	
	PreparedStatement pstmt;
	Connection conn;
	ResultSet rs;
	
	public void getConnection() {
		
		try {
			
			Context initctx = new InitialContext(); //여기조심... comp/env jdbc/oracle
			Context envctx = (Context) initctx.lookup("java:comp/env");
			DataSource ds = (DataSource) envctx.lookup("jdbc/oracle");
			conn = ds.getConnection();
			
			
		}catch(Exception e) {
			
			e.printStackTrace();
		}

		}
	
	

		
		public Vector<courseBean> bringcourse(){
			
			getConnection();
			Vector<courseBean> vec = new Vector<courseBean>();
			
			try {
				String sql = "select * from course_tbl";
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				
			while(rs.next()) {
				
				courseBean bean = new courseBean();
				//저장은 빈에
				bean.setId(rs.getString(1));
				bean.setName(rs.getString(2));
				bean.setCredit(rs.getInt(3));
				bean.setLecturer(rs.getString(4));
				bean.setWeek(rs.getInt(5));
				bean.setStart_hour(rs.getInt(6));
				bean.setEnd_end(rs.getInt(7));
			
				//vec.add(bean)
				vec.add(bean);
				
				
			}
			conn.close();
			
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			
			return vec;	
		
		}
		
		public void inputcourse(courseBean bean) {
			
			getConnection();
			
			try {
				String sql = "insert into course_tbl values(?,?,?,?,?,?,?)";
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setString(1, bean.getId());
				pstmt.setString(2, bean.getName());
				pstmt.setInt(3, bean.getCredit());
				pstmt.setString(4, bean.getLecturer());
				pstmt.setInt(5, bean.getWeek());
				pstmt.setInt(6, bean.getStart_hour());
				pstmt.setInt(7, bean.getEnd_end());
				
				pstmt.executeUpdate();
				conn.close();
				
			}catch(Exception e) {
				e.printStackTrace();
			}
			
		}//md end
		
		
			public courseBean updateStart(String id) {
				getConnection();
				courseBean bean = new courseBean();
				try {
					String sql = "select * from course_tbl where id = ?";
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, id);
					rs = pstmt.executeQuery();
					
				if(rs.next()) {
					
					bean.setId(rs.getString(1));
					bean.setName(rs.getString(2));
					bean.setCredit(rs.getInt(3));
					bean.setLecturer(rs.getString(4));
					bean.setWeek(rs.getInt(5));
					bean.setStart_hour(rs.getInt(6));
					bean.setEnd_end(rs.getInt(7));
					
					
				}
					
					conn.close();
					
					
					
				}catch(Exception e) {
					e.printStackTrace();
				}
				
				return bean;
			}
			
			
		public void processUpdate(courseBean bean) {
			
			getConnection();
			
			try {                  //***********set id= ? 이런식으로
				String sql = "update course_tbl set name=?, credit=?, lecturer=?, week=?, start_hour=?, end_end=? where id=?";
				pstmt = conn.prepareStatement(sql);
				
				//**************무조건 ?순서대로 넣어줘야 데이터가 들어감
				//ex set name=? where id=?일때
				//pstmt.setString(1, bean.getName());
				//pstmt.setString(2, bean.getId());
				
				//만약 WHERE절을 먼저세팅할 경우 **오류**안나고
				//데이터 입력도 안됨.
				//pstmt.setString(1, bean.getId());
				//pstmt.setString(2, bean.getName());
				
				
				pstmt.setString(1, bean.getName());
				pstmt.setInt(2, bean.getCredit());
				pstmt.setString(3, bean.getLecturer());
				pstmt.setInt(4, bean.getWeek());
				pstmt.setInt(5, bean.getStart_hour());
				pstmt.setInt(6, bean.getEnd_end());
				pstmt.setString(7, bean.getId());
				pstmt.executeUpdate();
				
				conn.close();
				
			}catch(Exception e){
				e.printStackTrace();
			}
			
			
	
			
			
		}
		
		public void deleteWithPs(String id) {
			
			getConnection();
			
			try {
				String sql = "delete from course_tbl where id=?";
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, id);
				
				pstmt.executeUpdate();
				conn.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
	
		}
		


	
	
	
		
}//end
