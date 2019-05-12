package mn.ooo.thanos.controller;

import lombok.RequiredArgsConstructor;
import mn.ooo.thanos.Helper.SearchHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequiredArgsConstructor
public class SearchController {

    @Autowired
    private SearchHelper searchHelper;

    private static final String SEARCH = "/search";

    @RequestMapping(value = "/")
    public ModelAndView homePage() {
        ModelAndView view = new ModelAndView();
        view.setViewName("index");
        return view;
    }
//
//    @RequestMapping(value = SEARCH, method = {RequestMethod.POST, RequestMethod.GET})
//    public String execute(@RequestParam("userName") final String userName) {
//
//    }
//
//    private boolean search(final String userName) {
//
//    }
}
