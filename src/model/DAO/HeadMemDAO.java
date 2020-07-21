package model.DAO;

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

		
	

	
	
}
