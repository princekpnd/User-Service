package Services;

import java.util.ArrayList;

import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
@Service
public class CustomeUserDetailsService  implements UserDetailsService{
	
	@Override
	public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {
	if(userName.equals("Prince")) {
		return new User("Prince", "Prince", new ArrayList<>());
	}else {
		throw new UsernameNotFoundException("User not found with username: " + userName);
	}
		
	}

}
