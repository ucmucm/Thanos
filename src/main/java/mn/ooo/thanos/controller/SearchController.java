package mn.ooo.thanos.controller;

import lombok.RequiredArgsConstructor;
import mn.ooo.thanos.helper.SearchHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import static mn.ooo.thanos.helper.Constant.*;

@RestController
@RequiredArgsConstructor
public class SearchController {

    @Autowired
    private SearchHelper searchHelper;

    @RequestMapping(value = "/")
    public ModelAndView homePage() {
        final ModelAndView view = new ModelAndView();
        view.setViewName(INDEX);
        return view;
    }

    @RequestMapping(value = SEARCH, method = RequestMethod.GET)
    public ModelAndView execute(@RequestParam(value = "username") final String username) {
        if (searchHelper.hasUserByUsername(username)) {
            System.out.println("1");
            return userHomepage(username);
        } else {
            System.out.println("2");
            return newUserPage(username);
        }
    }

    private ModelAndView userHomepage(final String username) {
        final ModelAndView view = new ModelAndView();
        view.addObject("username", username);
        return new ModelAndView("searchResult");
    }

    private ModelAndView newUserPage(final String username) {
        final ModelAndView view = new ModelAndView();
        return new ModelAndView(REDIRECT + SIGN_UP + "?username=" + username);
    }
}
