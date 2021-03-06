package co.grandcircus.pizzalab;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
public class PizzaLabController {


	@RequestMapping("/")
	public String displayIndex() {
		return "index";
		
	}
	
	@RequestMapping("/review") 
		public String displayReview() {
			return "review";
		}
	
	@RequestMapping("/confirmation")
		public String displayConfirmation() {
			return "confirmation";
	}
	@PostMapping("/review")
	public String submitReviewForm(@RequestParam String name, 
									@RequestParam String comment, 
									@RequestParam int rating,
									Model model) {
		model.addAttribute("name", name);
		model.addAttribute("comment", comment);
		model.addAttribute("rating", rating);
		return "confirmation";
	}
	
	@RequestMapping("/specialty")
	public String displaySpecialty() {
		return "specialty";
}
	@RequestMapping("/pizza")
	public String showSpecialty(@RequestParam String type, @RequestParam double price, Model model) {	
	
	model.addAttribute("type", type);
	model.addAttribute("price", price);
		return "specialty";
	}
	
	@RequestMapping("/custompizza")
	public String displayCustomPizza() {
		return "custompizza";
	}
	
	@PostMapping("/buildpizza")
	public String submitCustomPizzaForm(@RequestParam String size, 
									@RequestParam int toppings, 
									@RequestParam(defaultValue="false") Boolean gluten,
									@RequestParam String special,
									Model model) {
		model.addAttribute("size", size);
		model.addAttribute("toppings", toppings);
		model.addAttribute("gluten", gluten);
		model.addAttribute("special", special);
		double total = 0;
	
		
		if(size.equals("Small")) {
			total = 7 + (toppings*.5);
		} else if(size.equals("Medium")) {
			total = 10 + (toppings*1);
		} else if(size.equals("Large")) {
			total = 12 + (toppings*1.25);
		}
		
		if(gluten) {
			total+=2;
		}
		
		String result = gluten ? "Yes" : "No";
		model.addAttribute("result", result);
		
		model.addAttribute("total", total);
		return "buildpizza";
	}
	
	@RequestMapping("/buildpizza")
		public String displayBuildPizza(){
		return "buildpizza";
		
	}
	

	
	
	
}
