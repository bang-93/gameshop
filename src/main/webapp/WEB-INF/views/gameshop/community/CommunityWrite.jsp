<%@ page language="java" contentType="text/html;charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title>게시글 작성</title>
<!-- 공통 CSS -->
<link rel="stylesheet" type="text/css" href="/css/common/common.css"/>
 
<!-- 공통 JavaScript -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
      
    /** 게시판 - 목록 페이지 이동 */
    function goCommunityList(){                
        location.href = "/client/communityList";
    }
    
    /** 게시판 - 작성  */
    function insertCommunity(){
 
        var communitySubject = $("input[name='community_subject']").val();
        var communityWriter = $("#community_writer").val();
        var communityContent = $("#community_content").val();
            
        if (communitySubject == ""){            
            alert("제목을 입력해주세요.");
            $("#community_subject").focus();
            return;
        }else if(communityWriter==""){
            alert("작성자를 입력해주세요.");
            $("#community_writer").focus();
            return;
        }else if(communityContent == ""){
            alert("내용을 입력해주세요.");
            $("#community_content").focus();
            return;
        }
        
        var yn = confirm("게시글을 등록하시겠습니까?");        
        if(yn){
                
            $.ajax({    
                
               url      : "/client/insertCommunity",
               data     :
            	   {
            		   "board_title" : communitySubject,
            		   "board_writer" : communityWriter,
            		   "board_content" : communityContent       	   
               },
               dataType : "JSON",
               type     : "POST",    
               success  : function(result) {
            	   //alert("등록성공");
            	   //console.log(result);
            	   //location.href = "/client/communityList";
                    //insertCommunityCallback(obj);                
                }         
                
            });
        }
    }
    
    /** 게시판 - 작성 콜백 함수 */
    function insertCommunityCallback(obj){
    
        if(obj != null){        
            
            var result = obj.result;
            
            if(result == "SUCCESS"){                
                alert("게시글 등록을 성공하였습니다.");                
                goCommunityList();                 
            } else {                
                alert("게시글 등록을 실패하였습니다.");    
                return;
            }
        }
    }
    
</script>
</head>
<body>
<%@ include file="../client/inc/header.jsp" %>
<div id="wrap">
    <div id="container">
        <div class="inner">        
            <h2>게시글 작성</h2>
            <form id="communityForm" name="communityForm">
                <table width="100%" class="table02">
                <caption><strong><span class="t_red">*</span> 표시는 필수입력 항목입니다.</strong></caption>
                    <colgroup>
                        <col width="20%">
                        <col width="*">
                    </colgroup>
                    <tbody id="tbody">
                        <tr>
                            <th>제목<span class="t_red">*</span></th>
                            <td><input id="community_subject" name="community_subject" value="" class="tbox01"/></td>
                        </tr>
                        <tr>
                            <th>작성자<span class="t_red">*</span></th>
                            <td><input id="community_writer" name="community_writer" value="" class="tbox01"/></td>
                        </tr>
                        <tr>
                            <th>내용<span class="t_red">*</span></th>
                            <td><textarea id="community_content" name="community_content" cols="10" rows="5" class="textarea01"></textarea></td>
                        </tr>
                    </tbody>
                </table>
            </form>
            <div class="btn_right mt15">
                <button type="button" class="btn black mr5" onclick="javascript:goCommunityList();">목록으로</button>
                <button type="button" class="btn black" onclick="javascript:insertCommunity();">등록하기</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>