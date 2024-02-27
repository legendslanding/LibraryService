package com.cis.batch33.library.repository;

import com.cis.batch33.library.entity.LibraryMember;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
public interface LibraryMemberRepository extends JpaRepository<LibraryMember, Integer> {
    @Transactional
    @Modifying
    @Query("delete from LibraryMember l")
    int deleteFirstBy();

}