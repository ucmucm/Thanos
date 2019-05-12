package mn.ooo.thanos.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import static mn.ooo.thanos.helper.Constant.LOGIN;

@RestController
public class LoginController {

    @RequestMapping(value = LOGIN)
    public ModelAndView login(){
        return new ModelAndView("login");
    }
}
