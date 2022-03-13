package com.hh.hh.notice.repository;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.hh.hh.notice.entity.NoticeDto;
import com.hh.hh.notice.entity.PageVo;

@Repository
public class NoticeRepositoryImpl implements NoticeRepository {

	@Autowired
	private SqlSession ss;
	
	@Override
	public int insert(NoticeDto dto) throws Exception {
		int result = ss.insert("notice.insert", dto);
		return result;
	}

//	@Override
//	public List<NoticeDto> selectList() {
//		return ss.selectList("notice.selectAll");
//	}

	@Override
	public int edit(NoticeDto dto) {
		return ss.update("notice.update", dto);
	}

	@Override
	public int delete(NoticeDto dto) {
		return ss.delete("notice.delete", dto);
	}
	
	@Override
	public int deleteCheckbox(String[] delArr) throws Exception {
		return ss.delete("notice.deleteCheckbox" , delArr);
	}
	
	@Override
	public List<NoticeDto> getNoticeList(PageVo vo) throws Exception {
		return ss.selectList("notice.getNoticeList", vo);
	}

	@Override
	public int getNoticeCnt() throws Exception {
		return ss.selectOne("notice.getNoticeCnt");
	}

}