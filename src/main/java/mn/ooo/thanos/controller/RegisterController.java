package mn.ooo.thanos.controller;

import lombok.RequiredArgsConstructor;
import mn.ooo.thanos.model.UserInfo;
import mn.ooo.thanos.services.UserInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import static mn.ooo.thanos.utils.Constant.ADD;
import static mn.ooo.thanos.utils.Constant.EMAIL_ADDRESS;
import static mn.ooo.thanos.utils.Constant.PASSWORD;
import static mn.ooo.thanos.utils.Constant.SIGN_UP;
import static mn.ooo.thanos.utils.Constant.USERNAME;

@RestController
@RequiredArgsConstructor
public class RegisterController {

    @Autowired
    private UserInfoService userInfoService;

    @RequestMapping(value = SIGN_UP)
    public ModelAndView signupPage() {
        return new ModelAndView("signup");
    }

    @RequestMapping(value = SIGN_UP + ADD, method = RequestMethod.GET)
    public ModelAndView signup(@RequestParam(value = EMAIL_ADDRESS) final String emailAddress,
                               @RequestParam(value = USERNAME) final String username,
                               @RequestParam(value = PASSWORD) final String password) {

        final UserInfo userInfo = UserInfo.builder()
                .emailAddress(emailAddress)
                .username(username)
                .password(password)
                .build();

        try {
            userInfoService.save(userInfo);
            return new ModelAndView("searchResult");
        } catch (Exception e) {
            throw e;
        }
    }
}
