package mn.ooo.thanos.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import static mn.ooo.thanos.helper.Constant.SIGN_UP;

@RestController
public class RegisterController {



    @RequestMapping(value = SIGN_UP, method = RequestMethod.GET)
    public ModelAndView signup(@RequestParam(required = false) final String username) {
        return new ModelAndView("signup");
    }
}
