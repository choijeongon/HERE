package com.ssafy.herenft.repository;

import com.ssafy.herenft.entity.Nft;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

public interface NftRepository extends JpaRepository<Nft, String>, NftRepositoryCustom {
    List<Nft> findAllByIssuerId(UUID memberId);

    List<Nft> findAllByOwnerId(UUID senderId);
}
