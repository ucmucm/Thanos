package mn.ooo.thanos.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MainPageController {

    private static final String home = "/";

    @RequestMapping(value = home)
    public String home() {
        return "Hello World!";
    }
}
