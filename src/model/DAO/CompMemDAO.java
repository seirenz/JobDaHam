package model.DAO;

import java.util.ArrayList;
import java.util.List;

import model.DTO.CompMemDTO;

public class CompMemDAO extends DataBaseInfo {
	
 
   final String subQuery = "select nvl(max(comp_num), 0)+1 from companies";
	public String comNameConfirm(String compId) {
		String id = null;
		conn = getConnection();
		sql = "select comp_Id from companies where comp_Id = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, compId);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				id = rs.getString(1);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return id;
	}

	public Integer compLoginCk(String userId, String userPw) {
		Integer result = -1;
		conn = getConnection();
		sql = "select comp_pw from companies where comp_id = ? ";
				//+ " and join_ok is not null";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				String dbPw = rs.getString(1);
				if(userPw.equals(dbPw)) {
					result = 1; // 로그인
				}else {
					result = 0; //비밀번호가 틀렸습니다.
				}
			}else {
				result = -1; // 아이디가 틀렸을 때
			}
		}
		catch(Exception e) {e.printStackTrace();}
		finally {close();}
		return result;
		
	}

	  final String COLUMNS = "COMP_NUM,COMP_NAME,REPREGENT,B_NUM,COMP_TYPE,COMP_ADDR,CMANAGER_NAME,COMP_ID,COMP_PW,COMP_TEL,COMP_EMAIL,COMP_REGIST,JOIN_OK,MARKETING,INFO_AGREE,WORK_REQUEST";
	
	  public void compMemInsert(CompMemDTO dto) {
	
		conn = getConnection();
		sql = "insert into companies ( "+ COLUMNS +" )"
			+ "values(("+ subQuery +"),?,?,?,?,?,?,?,?,?,?,sysdate,null,?,?,?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getCompName());
			pstmt.setString(2, dto.getRepregent());
			pstmt.setString(3, dto.getbNum());
			pstmt.setString(4, dto.getCompType());
			pstmt.setString(5, dto.getCompAddr());
			pstmt.setString(6, dto.getCmanagerName());
			pstmt.setString(7, dto.getCompId());
			pstmt.setString(8, dto.getCompPw());
			pstmt.setString(9, dto.getCompTel());
			pstmt.setString(10, dto.getCompEmail());
			pstmt.setString(11, dto.getMarketing());
			pstmt.setString(12, dto.getInfoAgree());
			pstmt.setString(13, dto.getWorkRequest());
			int i = pstmt.executeUpdate();
			System.out.println(i + "개가 저장");
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}

		
	}

	public List<CompMemDTO> compMemSelect(String userId) {
		List<CompMemDTO> list = new ArrayList<CompMemDTO>();
	
		String condition = "";
		
		if(userId != null) condition = " and comp_id = ?";
		conn = getConnection();
		sql = "select " + COLUMNS +" from companies "
			+ " where 1=1 " + condition 
			+ " order by comp_REGIST desc";			
		
		try {
			pstmt = conn.prepareStatement(sql);
			if(userId != null) { 
				pstmt.setString(1, userId);	
			}
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				CompMemDTO dto = new CompMemDTO();
				dto.setCompNum(rs.getLong("comp_num"));
				dto.setCompName(rs.getString("comp_name"));
				dto.setRepregent(rs.getString("repregent"));
				dto.setbNum(rs.getString("b_num"));
				dto.setCompType(rs.getString("comp_type"));
				dto.setCompAddr(rs.getString("comp_addr"));
				dto.setCmanagerName(rs.getString("cmanager_name"));
				dto.setCompId(rs.getString("comp_id"));
				dto.setCompPw(rs.getString("comp_pw"));
				dto.setCompTel(rs.getString("comp_tel"));
				dto.setCompEmail(rs.getString("comp_email"));
				dto.setCompRegist(rs.getTimestamp("comp_regist"));
				dto.setJoinOk(rs.getString("join_ok"));
				dto.setMarketing(rs.getString("marketing"));
				dto.setInfoAgree(rs.getString("info_agree"));
				dto.setWorkRequest(rs.getString("work_request"));
				list.add(dto);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return list;
	}

	public Integer compMemCount() {
		Integer result = 0;
		conn = getConnection();
		sql = "select count(*) from companies";
		try {
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			rs.next();
			result = rs.getInt(1);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return result;
	}

	public void companyDelete(String userId, String userPw) {
		int i = 0;
		conn = getConnection();
		String condition = "";
		if(userPw !=null) {
			condition = " and comp_pw = ? ";
		}
		sql = "delete from companies where comp_id = ? " + condition;
		System.out.println(sql);
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			
			if(userPw !=null) {
				pstmt.setString(2, userPw);
			}
			i = pstmt.executeUpdate(); 
			System.out.println(i + "개가 삭제되었습니다.");
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
	}
	

}
