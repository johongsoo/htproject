package htproject.mvc.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import htproject.mvc.Service.A01_Service;
import htproject.z01_vo.Mem;

@Controller
public class A01_Controller {
    @Autowired(required = false)
    private A01_Service service;

    // http://localhost:7080/htproject/mem.do		?mem_id=junha
    @RequestMapping("mem.do")
    public String mem(@RequestParam("mem_id") String mem_id, Model d) {
        d.addAttribute("mem",service.getMem(mem_id));
        return "WEB-INF\\views\\mvc\\a01_MyPage.jsp";
    }
    
 // http://localhost:7080/htproject/train.do		?mem_id=junha
    @RequestMapping("train.do")
    public String train(@RequestParam("mem_id") String mem_id, Model d) {
        d.addAttribute("mem",service.getTrain(mem_id));
        return "WEB-INF\\views\\mvc\\a04_tview.jsp";
    }

    // http://localhost:7080/htproject/memInsertForm100.do
 	@RequestMapping("memInsertForm100.do")
 	public String memInsertForm100() {
 		return "WEB-INF\\views\\mvc\\a02_memInsertForm.jsp";
 	}

 	@RequestMapping("memInsert100.do")
 	public String memInsert100(Mem ins, Model d) {
 	d.addAttribute("result", service.insertMem(ins));
 	return "WEB-INF\\views\\mvc\\a02_memInsertForm.jsp";
 	}

    // http://localhost:7080/htproject/memUpdate100.do
    @RequestMapping("memUpdate100.do")
    public String memUpdate(Mem upt, Model d) {
    d.addAttribute("msg", service.updateMem(upt));
    d.addAttribute("mem", service.getMem(upt.getMem_id())); 
        return "WEB-INF\\views\\mvc\\a03_MemDetail.jsp";
    }

    // http://localhost:7080/htproject/memDelete100.do
    @RequestMapping("memDelete100.do")
    public String memDelete(@RequestParam("mem_id") String mem_id, Model d) {
    d.addAttribute("msg", service.deleteMem(mem_id));
    d.addAttribute("proc", "삭제");
    return "WEB-INF\\views\\mvc\\a03_MemDetail.jsp";
    }

    
    // http://localhost:7080/htproject/mem02.do?mem_id=junha
    @RequestMapping("mem02.do")
    public String mem02(@RequestParam("mem_id") String mem_id, Model d) {
    d.addAttribute("mem", service.getMem(mem_id));
    return "WEB-INF\\views\\mvc\\a03_MemDetail.jsp";
    }
    
}
