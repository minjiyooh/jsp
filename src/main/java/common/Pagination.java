package common;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import board.BoardDAO;
import board.BoardVO;

public class Pagination {

	public static void pageChange(HttpServletRequest request, int pag, int pageSize, String contentsShow, String section,	String part) {
		// 사용하는 vo가 각각 다르기에 하나의 DAO를 사용하는것 보다는, 해당 DAO에서 처리하는것이 더 편리하다.
		BoardDAO boardDao = new BoardDAO();
		//PdsDAO pdsDao = new PdsDAO();
		
		int totRecCnt = 0;
		
		if(section.equals("board")) {
			totRecCnt = boardDao.getTotRecCnt(contentsShow);	// 게시판의 전체/조건에 따른 레코드수 구하기
		}
		else if(section.equals("pds")) {
			//totRecCnt = pdsDao.getTotRecCnt(contentsShow);	// 자료실의 전체/조건에 따른 레코드수 구하기
		}
		
		int totPage = (totRecCnt % pageSize)==0 ? (totRecCnt / pageSize) : (totRecCnt / pageSize) + 1;
		if(pag > totPage) pag = 1;
		int startIndexNo = (pag - 1) * pageSize;
		int curScrStartNo = totRecCnt - startIndexNo;
		
		int blockSize = 3;
		int curBlock = (pag - 1) / blockSize;
		int lastBlock = (totPage - 1) / blockSize;
		
		List<BoardVO> vos = null;
		//List<PdsVO> vos = null;
		
		if(section.equals("board")) {
			vos = boardDao.getBoardList(startIndexNo, pageSize, contentsShow);	// 게시판의 전체 자료 가져오기
		}
		else if(section.equals("pds")) {
			//vos = pdsDao.getBoardList(startIndexNo, pageSize, contentsShow);	// 자료실의 전체 자료 가져오기
		}
		request.setAttribute("vos", vos);
		
		request.setAttribute("pag", pag);
		request.setAttribute("pageSize", pageSize);
		request.setAttribute("totRecCnt", totRecCnt);
		request.setAttribute("totPage", totPage);
		request.setAttribute("curScrStartNo", curScrStartNo);
		request.setAttribute("blockSize", blockSize);
		request.setAttribute("curBlock", curBlock);
		request.setAttribute("lastBlock", lastBlock);
		
		//request.setAttribute("part", part);
		
	}


}
