package com.johnebri.carinventory.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

// @EnableWebSecurity
@Configuration
public class SecurityConfiguration extends WebSecurityConfigurerAdapter
{

//	@Override
//	protected void configure(HttpSecurity http) throws Exception {
//		http
//			.authorizeRequests()
//			.anyRequest().authenticated()
//			.and()
//			.formLogin()
//			.loginPage("/login")
//			.permitAll();
//	}
	
	@Autowired
	public void configureGlobalSecurity(AuthenticationManagerBuilder auth) throws Exception {
		auth.inMemoryAuthentication().withUser("johnebri").password("{noop}111111")
			.roles("USER", "ADMIN");
	}
	
	
	
}

//@Configuration
//@EnableWebSecurity
//public class SecurityConfiguration extends WebSecurityConfigurerAdapter{
//
//	@Override
//	protected void configure(HttpSecurity http) throws Exception {
		
//		http
//        .authorizeRequests()
//            .antMatchers("/").permitAll() 
//            .anyRequest().authenticated()
//            .and()
//        .formLogin()
//            .loginPage("/login")
//            .permitAll()
//            .and()
//        .logout()                                    
//            .permitAll();
		
//		http
//		.authorizeRequests()
//			.antMatchers("/login").permitAll()
//			.anyRequest().authenticated()
//			.and()
//		.formLogin()
//			.loginPage("/login")
//			.permitAll()
//			.and()
//		.logout()
//			.permitAll()
//		.and()
//			.httpBasic();
		 
		
//		http
//		.csrf().disable()
//		.authorizeRequests()
//		.antMatchers("/vendors/*").hasRole("VENDOR")
//		.antMatchers("/customers/*").hasRole("CUSTOMER")
//		.antMatchers("/", "/login").permitAll().
//		 anyRequest().authenticated()
//		.and().sessionManagement()
//		.and()
//			.formLogin()
//				.loginPage("/login")
//		.and()
//		.httpBasic();
		
//	}
//}
