package kr.co.gameshop.controller.client;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**import ko.co.gameshop.dto.CartDTO;

public class CartController {

	@RequestMapping("list.do")
    public ModelAndView list(HttpSession session, ModelAndView mav) {
        Map<String, Object> map=new HashMap<>();

        //hashmap은 map(key,value)로 이뤄져 있고,
        //key값은 중복이 불가능 하고 value는 중복이 가능하다.
        //value에 null값도 사용이 가능하다.
        //전달할 정보가 많을 경우에는 HashMap<>을 사용하는 것이 좋다.
        //장바구니에 담을 값들이 많기 때문에 여기선 HashMap<>를 사용한다.
                

        String userid=(String)session.getAttribute("userid");

        //session에 저장된 userid를 getAttribute()메소드를 사용해서 얻어오고 오브젝트 타입이기 때문에
        //String 타입으로 타입변환한다.

        if(userid!=null) { 
            //로그인한 상태이면 실행
            List<CartDTO> list=cartService.listCart(userid);//장바구니 목록
            int sumMoney=cartService.sumMoney(userid);//금액 합계
            int fee=sumMoney >= 30000 ? 0 : 2500; 
            
            //배송료 계산
            //30000원이 넘으면 배송료가 0원, 안넘으면 2500원
            
           //hasp map에 장바구니에 넣을 각종 값들을 저장함
            map.put("sumMoney", sumMoney);
            map.put("fee", fee); //배송료
            map.put("sum", sumMoney+fee); //전체 금액
            map.put("list", list); //장바구니 목록
            map.put("count", list.size()); //레코드 갯수

           //ModelAndView mav에 이동할 페이지의 이름과 데이터를 저장한다.

            mav.setViewName("shop/cart_list"); //이동할 페이지의 이름
            mav.addObject("map", map); //데이터 저장

            return mav; //화면 이동

        }else { //로그인하지 않은 상태

            return new ModelAndView("member/login", "", null);
            //로그인을 하지 않았으면 로그인 페이지로 이동시킨다.
        }
    }**/
