package mn.ooo.thanos.controller;

import lombok.RequiredArgsConstructor;
import mn.ooo.thanos.Helper.SearchHelper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequiredArgsConstructor
public class SearchController {

    @Autowired
    private SearchHelper searchHelper;

    private static final String SEARCH = "/search";
    private static final String INDEX = "index";
    private static final String SEARCH_RESULT = "searchResult";

    @RequestMapping(value = "/")
    public ModelAndView homePage() {
        final ModelAndView view = new ModelAndView();
        view.setViewName(INDEX);
        return view;
    }

    @RequestMapping(value = SEARCH, method = RequestMethod.GET)
    public ModelAndView execute(@RequestParam("username") final String userName) {
        final ModelAndView view = new ModelAndView();
        view.setViewName(SEARCH_RESULT);
        return view;
    }
}
