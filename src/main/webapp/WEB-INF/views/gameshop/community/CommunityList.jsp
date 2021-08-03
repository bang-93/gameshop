<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시글 목록</title>
 
<!-- 공통 CSS -->
<link rel="stylesheet" type="text/css" href="/css/common/common.css"/>
 
<!-- 공통 JavaScript -->
<script type="text/javascript" src="/js/common/jquery.js"></script>
<script type="text/javascript">
 
    $(document).ready(function(){    
        getCommunityList();
    });        
    
    /** 게시판 - 상세 페이지 이동 */
    function goCommunityDetail(boardSeq){                
        location.href = "/client/communityDetail?communitySeq="+ communitySeq;
    }
    
    /** 게시판 - 작성 페이지 이동 */
    function goCommunityWrite(){        
        location.href = "/client/communityWrite";
    }
 
    /** 게시판 - 목록 조회  */
    function getCommunityList(){
 
        $.ajax({    
        
           url      : "/client/getCommunityList",
           data     : $("#communityForm").serialize(),
           dataType : "JSON",
           cache    : false,
           async    : true,
           type     : "POST",    
           success  : function(obj) {
                getCommunityListCallback(obj);                
            },           
           error    : function(xhr, status, error) {}
            
         });
    }
    
    /** 게시판 - 목록 조회  콜백 함수 */
    function getCommunityListCallback(obj){
        
        var list = obj;
        var listLen = obj.length;
                
        var str = "";
        
        if(listLen >  0){
            
            for(var a=0; a<listLen; a++){
                
                var communitySeq        = list[a].community_seq; 
                var communityReRef      = list[a].community_re_ref; 
                var communityReLev      = list[a].community_re_lev; 
                var communityReSeq      = list[a].community_re_seq; 
                var communityWriter     = list[a].community_writer; 
                var communitySubject    = list[a].community_subject; 
                var communityContent    = list[a].community_content; 
                var communityHits       = list[a].community_hits;
                var delYn           = list[a].del_yn; 
                var insUserId       = list[a].ins_user_id;
                var insDate         = list[a].ins_date; 
                var updUserId       = list[a].upd_user_id;
                var updDate         = list[a].upd_date;
                
                str += "<tr>";
                str += "<td>"+ communitySeq +"</td>";
                str += "<td onclick='javascript:goCommunityDetail("+ communitySeq +");' style='cursor:Pointer'>"+ communitySubject +"</td>";
                str += "<td>"+ communityHits +"</td>";
                str += "<td>"+ communityWriter +"</td>";    
                str += "<td>"+ insDate +"</td>";    
                str += "</tr>";
                
            } 
            
        } else {
            
            str += "<tr>";
            str += "<td colspan='5'>등록된 글이 존재하지 않습니다.</td>";
            str += "<tr>";
        }
        
        $("#tbody").html(str);
    }
    
</script>
</head>
<body>
<%@ include file="../client/inc/header.jsp" %> 
<div id="wrap">
    <div id="container">
        <div class="inner">        
            <h2>게시글 목록</h2>            
            <form id="communityForm" name="communityForm">
                <table width="100%" class="table01">
                    <colgroup>
                        <col width="10%" />
                        <col width="25%" />
                        <col width="10%" />
                        <col width="15%" />
                        <col width="20%" />
                    </colgroup>
                    <thead>        
                        <tr>
                            <th>글번호</th>
                            <th>제목</th>
                            <th>조회수</th>
                            <th>작성자</th>
                            <th>작성일</th>
                        </tr>
                    </thead>
                    <tbody id="tbody">
                    
                    </tbody>    
                </table>
            </form>            
            <div class="btn_right mt15">
                <button type="button" class="btn black mr5" onclick="javascript:goCommunityWrite();">작성하기</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>