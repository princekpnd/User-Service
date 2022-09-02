package myproject.spring.test.springboot.Controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/mycontroller")
public class MyController {
	
@GetMapping("getall")
public ResponseEntity<String> application() {
	return new ResponseEntity<String>("This is my page", HttpStatus.OK);
}
}
