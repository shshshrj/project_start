package first.project.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.hibernate.validator.constraints.Length;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.google.gson.Gson;

import first.project.dto.bloodhouse;
import first.project.dto.bloodlist;
import first.project.dto.buserDto;
import first.project.service.MapService;
import first.project.service.MypageService;


@SessionAttributes("user")
@Controller
public class MainController {
	@Autowired
	MypageService m_service;
	MapService map_service;
	
	@ModelAttribute("user")
	public buserDto getDto() {
		return new buserDto();
	}

	@GetMapping("/")
	public String indexform() {
		return "index";
	}

	@GetMapping("signupform")
	public String signupform() {
		return "signup/signup";
	}

	@GetMapping("loginform")
	public String loginform() {
		return "login/login";
	}

	@GetMapping("boardform")
	public String boardform() {
		return "board/board";

	}

	@GetMapping("mapform")
	public String mapform(@RequestParam(name="p",defaultValue = "1") int page,@ModelAttribute("user") buserDto buser ,Model m) {

		List<bloodhouse> bh_list = new ArrayList<bloodhouse>();

		
		try {
            String urlStr = "https://api.odcloud.kr/api/15050728/v1/uddi:090a49f9-241c-4738-a3b4-bcff01d0062b_201711011009?page=1&perPage=200&serviceKey=TUfKwHlNTObSFJi9MUmOuy65HOB6W2S%2FcDhIbyI4ExrHpugJ2DZxO0e1RQtefwagX9JkVyBFlel9XMdE3nucLg%3D%3D";
            URL url = new URL(urlStr);

            String line = "";
            String result = "";

            BufferedReader br;
            br = new BufferedReader(new InputStreamReader(url.openStream()));
            while ((line = br.readLine()) != null) {
                result = result.concat(line);
            }

            JSONParser parser = new JSONParser();
            JSONObject obj = (JSONObject)parser.parse(result);
            JSONArray parse_listArr = (JSONArray)obj.get("data");

            for (int i=0;i< parse_listArr.size();i++) {
            	bloodhouse bh = new bloodhouse();
                JSONObject bhouse = (JSONObject) parse_listArr.get(i);
                bh.setBhphone((String)bhouse.get("�쟾�솕踰덊샇"));
                bh.setBhname((String)bhouse.get("�뿄�삁�쓽 吏�"));
                bh.setBhone((String)bhouse.get("�삁�븸�썝"));
                bh.setBhlocation((String)bhouse.get("二쇱냼吏�"));
                bh_list.add(bh);

            }
            br.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
		
		try {
			List<String> bhlike_selct = map_service.bhlike_select(buser.getUserid());
			m.addAttribute("bhlike_select", bhlike_selct);
		}catch (NullPointerException e) {
			e.printStackTrace();
		}
		
		int count = bh_list.size();
		if(count > 0) {
			int perpage = 15; //���������� ���� ���� ����
			int startRow = (page-1) * perpage;
			int endRow = page * perpage;
		
			List<bloodhouse> bh_page_list = new ArrayList<bloodhouse>();
			for (int i=0; i<bh_list.size(); i++) {
				if(i>=startRow && i<=endRow) {
					bh_page_list.add(bh_list.get(i));
				}
			}
			m.addAttribute("bh_page_list", bh_page_list);
			
			int pageNum = 5;
			int totalPages = count / perpage + (count%perpage > 0 ? 1:0);//��ü ��������
			int begin = (page - 1) / pageNum * pageNum + 1;
			int end = begin + pageNum - 1;
			if(end > totalPages) {
				end = totalPages;
			}
			m.addAttribute("begin", begin);
			m.addAttribute("end", end);
			m.addAttribute("totalpages", totalPages);
			m.addAttribute("pageNum", pageNum);
		}
		
		m.addAttribute("count", count);
		
		
		m.addAttribute("buser", buser);
		m.addAttribute("bh_list",bh_list);
		return "res/map";
	}

	@GetMapping("mypageform")
	public String mypageform(HttpSession session, Model m) throws ParseException {
		buserDto user = (buserDto)session.getAttribute("user");
		if(session.getAttribute("user") != null) {
			System.out.println(user.getUserpw());
//			bloodlist list = m_service.last_bhdate(user.getUserid());
//			SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
//			Date date = list.getBhdate();
//			Date now = new Date();
//			String today = sdf.format(now);
//			Date format1 = new SimpleDateFormat("yyyyMMdd").parse(today);
//			Long Dday = (format1.getTime() - date.getTime())/(1000*60*60*24);
//			String bhselect = list.getBhselect();
//			Map<String, Object> lastDay = new HashMap<>();
//			lastDay.put("Dday", Dday);
//			lastDay.put("bhselect", bhselect);
//			m.addAttribute("lastDay", lastDay);
			return "mypage/mypage";
		}
		return "redirect:/";
	}

}
