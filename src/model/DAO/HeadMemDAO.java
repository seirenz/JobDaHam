package model.DAO;

import java.util.ArrayList;
import java.util.List;

import model.DTO.CompMemDTO;
import model.DTO.HeadMemDTO;

public class HeadMemDAO  extends DataBaseInfo  {
	final String subQuery = "select nvl(max(head_num), 0)+1 from headhunters";
	public String headNameConfirm(String headId) {
		String id = null;
		conn = getConnection();
		sql = "select head_Id from headhunters where head_Id = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, headId);
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
	
	 final String COLUMNS = "HEAD_NUM,HEAD_NAME,HEAD_OWNER,B_NUM,HEAD_TYPE,HEAD_ADDR,HMANAGER_NAME,HEAD_ID,HEAD_PW,HEAD_TEL,HEAD_EMAIL,HEAD_REGIST,JOIN_OK,MARKETING,INFO_AGREE,WORK_REQUEST";
	public void headMemInsert(HeadMemDTO dto) {
		conn = getConnection();
		sql = "insert into headhunters ( "+ COLUMNS +" )"
			+ "values(("+ subQuery +"),?,?,?,?,?,?,?,?,?,?,sysdate,null,?,?,?)";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getHeadName());
			pstmt.setString(2, dto.getHeadOwner());
			pstmt.setString(3, dto.getbNum());
			pstmt.setString(4, dto.getHeadType());
			pstmt.setString(5, dto.getHeadAddr());
			pstmt.setString(6, dto.getHmanagerName());
			pstmt.setString(7, dto.getHeadId());
			pstmt.setString(8, dto.getHeadPw());
			pstmt.setString(9, dto.getHeadTel());
			pstmt.setString(10, dto.getHeadEmail());
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
	
	public Integer headLoginCk(String userId, String userPw) {
		Integer result = -1;
		conn = getConnection();
		sql = "select head_pw from headhunters where head_id = ? ";
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

	public List<HeadMemDTO> headMemSelect(String userId) {
		List<HeadMemDTO> list = new ArrayList<HeadMemDTO>();
		
		String condition = "";
		
		if(userId != null) condition = " and head_id = ?";
		conn = getConnection();
		sql = "select " + COLUMNS +" from headhunters "
			+ " where 1=1 " + condition 
			+ " order by head_REGIST desc";			
		
		try {
			pstmt = conn.prepareStatement(sql);
			if(userId != null) { 
				pstmt.setString(1, userId);	
			}
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				HeadMemDTO dto = new HeadMemDTO();
				dto.setHeadNum(rs.getString("head_num"));
				dto.setHeadName(rs.getString("head_name"));
				dto.setHeadOwner(rs.getString("head_owner"));
				dto.setbNum(rs.getString("b_num"));
				dto.setHeadType(rs.getString("head_type"));
				dto.setHeadAddr(rs.getString("head_addr"));
				dto.setHmanagerName(rs.getString("hmanager_name"));
				dto.setHeadId(rs.getString("head_id"));
				dto.setHeadPw(rs.getString("head_pw"));
				dto.setHeadTel(rs.getString("head_tel"));
				dto.setHeadEmail(rs.getString("head_email"));
				dto.setHeadRegist(rs.getTimestamp("head_regist"));
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

	public Integer headMemCount() {
		Integer result = 0;
		conn = getConnection();
		sql = "select count(*) from headhunters";
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

		
	

	
	
}
