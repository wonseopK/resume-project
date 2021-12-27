package data.main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {
	@GetMapping("/")
	public String showMain() {
		return "/layout/layout";
	}
	@GetMapping("/resume/project")
	public String showProject() {
		return "/resume/project";
	}
	@GetMapping("/resume/contact")
	public String contact() {
		return "/resume/contact";
	}
	@GetMapping("/comment/comment")
	public String comment() {
		return "/comment/comment";
	}
}
