package com.johnebri.carinventory.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
public class SecurityConfiguration extends WebSecurityConfigurerAdapter
{

//	@Override
//	protected void configure(HttpSecurity http) throws Exception {
//	
//			http
//		  .authorizeRequests()
//		      .antMatchers("/login").permitAll() 
//		      .anyRequest().authenticated()
//		      .and()
//		  .logout()                                    
//		      .permitAll();
//			
//	}
	
	@Autowired
	public void configureGlobalSecurity(AuthenticationManagerBuilder auth) throws Exception {
		auth.inMemoryAuthentication().withUser("johnebri").password("{noop}111111")
			.roles("USER", "ADMIN");
	}
	
	
}