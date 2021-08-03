package kr.co.gameshop.controller.client;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import ko.co.gameshop.dto.CommunityDto;
import ko.co.gameshop.form.CommunityForm;
import kr.co.gameshop.service.CommunityService;

@Controller
public class CommunityController {
	@Autowired
    private CommunityService communityService;
 
	/** 게시판 - 목록 페이지 이동 */
    @RequestMapping( value = "/communityList")
    public String communityList(HttpServletRequest request, HttpServletResponse response) throws Exception{
        
        return "/gameshop/community/CommunityList";
    }
        
    /** 게시판 - 목록 조회  */
    @RequestMapping(value = "/getCommunityList")
    @ResponseBody
    public List<CommunityDto> getCommunityList(HttpServletRequest request, HttpServletResponse response, CommunityForm communityForm) throws Exception {
 
        List<CommunityDto> communityDtoList = communityService.getCommunityList(communityForm);
 
        return communityDtoList;
    }
    
    /** 게시판 - 상세 페이지 이동 */
    @RequestMapping( value = "/communityDetail")
    public String boardDetail(HttpServletRequest request, HttpServletResponse response) throws Exception{
        
        return "community/communityDetail";
    }    
    
    /** 게시판 - 상세 조회  */
    @RequestMapping(value = "/getCommunityDetail")
    @ResponseBody
    public CommunityDto getCommunityDetail(HttpServletRequest request, HttpServletResponse response, CommunityForm communityForm) throws Exception {
 
        CommunityDto communityDto = CommunityService.getCommunityDetail(communityForm);
 
        return communityDto;
    }
    
    /** 게시판 - 작성 페이지 이동 */
    @RequestMapping( value = "/communityWrite")
    public String communityWrite(HttpServletRequest request, HttpServletResponse response) throws Exception{
        
        return "community/communityWrite";
    }
    
    /** 게시판 - 등록 */
    @RequestMapping( value = "/insertCommunity")
    @ResponseBody
    public CommunityDto insertCommunity(HttpServletRequest request, HttpServletResponse response, CommunityForm communityForm) throws Exception{
        
        CommunityDto communityDto = communityService.insertCommunity(communityForm);
        
        return communityDto;
    }
    
    /** 게시판 - 삭제 */
    @RequestMapping( value = "/deleteCommunity")
    @ResponseBody
    public CommunityDto deleteCommunity(HttpServletRequest request, HttpServletResponse response, CommunityForm communityForm) throws Exception{
        
        CommunityDto communityDto = communityService.deleteCommunity(communityForm);
        
        return communityDto;
    }
    
    /** 게시판 - 수정 페이지 이동 */
    @RequestMapping( value = "/communityUpdate")
    public String communityUpdate(HttpServletRequest request, HttpServletResponse response) throws Exception{
        
        return "community/communityUpdate";
    }
    
    /** 게시판 - 수정 */
    @RequestMapping( value = "/updateBoard")
    @ResponseBody
    public CommunityDto updateCommunity(HttpServletRequest request, HttpServletResponse response, CommunityForm communityForm) throws Exception{
        
        CommunityDto communityDto = communityService.updateCommunity(communityForm);
        
        return communityDto;
    }

}
