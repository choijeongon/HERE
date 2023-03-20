package com.ssafy.hereboard.service;

import com.ssafy.hereboard.dto.board.*;
import com.ssafy.hereboard.dto.common.response.ResponseSuccessDto;
import com.ssafy.hereboard.entity.Board;
import com.ssafy.hereboard.entity.BoardImg;
import com.ssafy.hereboard.entity.Member;
import com.ssafy.hereboard.enumeration.response.HereStatus;
import com.ssafy.hereboard.errorhandling.exception.service.EntityIsNullException;
import com.ssafy.hereboard.repository.BoardImgRepository;
import com.ssafy.hereboard.repository.BoardRepository;
import com.ssafy.hereboard.repository.MemberRepository;
import com.ssafy.hereboard.util.ResponseUtil;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Slf4j
@Service
@RequiredArgsConstructor
@Transactional
public class BoardService {

    private final ResponseUtil responseUtil;
    private final MemberRepository memberRepository;
    private final BoardRepository boardRepository;
    private final BoardImgRepository boardImgRepository;

    /* 게시글 생성 */
    public ResponseSuccessDto<SaveBoardResponseDto> save(SaveBoardRequestDto saveBoardRequestDto) {
        Member member = memberRepository.findById(saveBoardRequestDto.getMemberId())
                .orElseThrow(() -> new EntityIsNullException("해당 회원이 존재하지 않습니다."));
        Board board = new Board().createBoard(member, saveBoardRequestDto);
        boardRepository.save(board);

        // 이미지 리스트 넣어주기
        for (String img : saveBoardRequestDto.getImgUrlList()) {
            BoardImg boardImg = new BoardImg().createBoardImg(board, img);
            boardImgRepository.save(boardImg);
        }

        SaveBoardResponseDto saveBoardResponseDto = SaveBoardResponseDto.builder()
                .boardId(board.getId())
                .message("게시글 등록 성공")
                .build();

        ResponseSuccessDto<SaveBoardResponseDto> res = responseUtil.successResponse(saveBoardResponseDto, HereStatus.HERE_WRITE_BOARD);
        return res;
    }

    /* 게시글 상세 조회 */
    public ResponseSuccessDto<GetBoardResponseDto> getBoard(Long boardId) {
        Board board = boardRepository.findById(boardId)
                .orElseThrow(() -> new EntityIsNullException("해당 게시글이 존재하지 않습니다."));
        int curQ = board.getCurQuantity();
        int goalQ = board.getGoalQuantity();
        int percentage = curQ / goalQ;

        List<BoardImg> boardImgs = boardImgRepository.findAllByBoardId(boardId);
//        List<String> imgUrlList = boardImgs.stream()
//                        .map(BoardImg::getImgUrl)
//                                .collect(Collectors.toList());
        List<String> imgUrlList = new ArrayList<>();
        for (BoardImg boardImg : boardImgs) {
            imgUrlList.add(boardImg.getImgUrl());
        }

        GetBoardResponseDto getBoardResponseDto = GetBoardResponseDto.builder()
                .boardId(board.getId())
                .title(board.getTitle())
                .content(board.getContent())
                .deadline(board.getDeadline())
                .percentage(percentage)
                .curQuantity(board.getCurQuantity())
                .goalQuantity(board.getGoalQuantity())
                .createdDate(board.getCreatedDate())
                .boardImgUrlList(imgUrlList)
                .status(board.getStatus())
                .memberId(board.getMember().getId())
                .build();

        ResponseSuccessDto<GetBoardResponseDto> res = responseUtil.successResponse(getBoardResponseDto, HereStatus.HERE_FIND_BOARD_DETAIL);
        return res;
    }

    /* 게시글 수정 */
    public ResponseSuccessDto<UpdateBoardResponseDto> updateBoard(UpdateBoardRequestDto updateBoardRequestDto) {
        // 수정할 게시글 가져오기
        Board board = boardRepository.findById(updateBoardRequestDto.getBoardId())
                .orElseThrow(() -> new EntityIsNullException("해당 게시글이 없습니다."));
        // 게시글의 title, content 수정
        board.updateBoard(board, updateBoardRequestDto);

        // 해당 게시글의 기존 이미지 리스트를 db에서 삭제
        List<BoardImg> boardImgs = boardImgRepository.findAllByBoardId(updateBoardRequestDto.getBoardId());

        for (BoardImg boardImg : boardImgs) {
            boardImgRepository.delete(boardImg);
        }

        // 새롭게 들어온 이미지 리스트로 db에 추가
        for (String img : updateBoardRequestDto.getImgUrlList()) {
            BoardImg boardImg = new BoardImg().createBoardImg(board, img);
            boardImgRepository.save(boardImg);
        }
        UpdateBoardResponseDto updateBoardResponseDto = UpdateBoardResponseDto.builder()
                .boardId(board.getId())
                .message("게시글 수정 성공")
                .build();

        ResponseSuccessDto<UpdateBoardResponseDto> res = responseUtil.successResponse(updateBoardResponseDto, HereStatus.HERE_UPATE_BOARD);
        return res;
    }

}
