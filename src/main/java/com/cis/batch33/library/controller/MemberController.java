package com.cis.batch33.library.controller;

import com.cis.batch33.library.model.Member;
import com.cis.batch33.library.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/member")
public class MemberController {
    @Autowired
    private MemberService memberService;

    @GetMapping
    public Member getMember(Long memberId){
        return memberService.getMember(memberId);
    }

    // create a member
    @PostMapping
    public Member createMember(@RequestBody  Member member){
        return memberService.createMember(member);
    }

    @PutMapping
    public Member updateMember(@RequestBody Member member){
        // Set the memberId for the member object to be updated
        return memberService.updateMember(member);
    }

    @DeleteMapping
    public void deleteMember(Long memberId){
        memberService.deleteMember(memberId);
    }
}
