package com.ssafy.herenft.eunmeration.response;

public enum HereStatus {
    // Nft 등록 성공
    HERE_CREATE_NFT,

    // NFT 목록 조회
    HERE_FIND_NFT_LIST,

    // 내 증명서 제출(기관)
    HERE_SUBMIT_CERTIFICATION,

    // 증명 승인/미승인 목록 조회 (기관) 성공
    HERE_FIND_CERT_LIST_AGENCY,

    // 증명 승인/미승인 목록 조회 (병원) 성공
    HERE_FIND_CERT_LIST_HOSPITAL,

    // 발행 목록 조회 성공 (적십자)
    HERE_FIND_REDCROSS,


}
