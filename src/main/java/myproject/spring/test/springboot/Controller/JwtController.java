package myproject.spring.test.springboot.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.DisabledException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import Services.CustomeUserDetailsService;
import helper.JwtUtile;
import model.JwtRequest;
import model.JwtResponse;


@RestController
@CrossOrigin
public class JwtController {
	
	@Autowired
	private AuthenticationManager authenticationManager;
	
	@Autowired
	private JwtUtile jwtUtile;
	
	@Autowired
	private CustomeUserDetailsService customeUserDetailsService;

	@RequestMapping(value = "/genratetoken", method = RequestMethod.POST)
	public ResponseEntity<?> genrateToken(@RequestBody JwtRequest jwtRequest) throws Exception {
		System.out.println(jwtRequest);
		try
		{
			this.authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(jwtRequest.getUsername(), jwtRequest.getPassword()));
		}catch (UsernameNotFoundException e)
		{
			e.printStackTrace();
			throw new Exception("Bed creedaincial");
		}
		UserDetails userDetails = this.customeUserDetailsService.loadUserByUsername(jwtRequest.getUsername());
		String token = this.jwtUtile.generateToken(userDetails);
		System.out.println("JWT" +token);
		return ResponseEntity.ok(new JwtResponse(token));
	}
	
	@Autowired
	private void authenticate(String username, String password) throws Exception {
		try {
			UsernamePasswordAuthenticationToken userToken = new UsernamePasswordAuthenticationToken(username, password);
			authenticationManager.authenticate(userToken);
		} catch (DisabledException e) {
			throw new Exception("USER_DISABLED", e);
		} catch (BadCredentialsException e) {
			throw new Exception("INVALID_CREDENTIALS", e);
		}
	}
}
