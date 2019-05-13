package mn.ooo.thanos.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import static mn.ooo.thanos.helper.Constant.*;

@RestController
public class ArticleController {

    private String username;

    @RequestMapping(value = ARTICLE + VIEW)
    public ModelAndView view() {
        final ModelAndView mv = new ModelAndView();
        mv.setViewName("article/view");
        return mv;
    }

    @RequestMapping(value = ARTICLE + EDIT)
    public ModelAndView edit() {
        final ModelAndView mv = new ModelAndView();
        mv.setViewName("article/edit");
        return mv;
    }
}
