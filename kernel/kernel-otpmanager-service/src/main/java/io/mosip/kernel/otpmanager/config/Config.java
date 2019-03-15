package io.mosip.kernel.otpmanager.config;

import javax.servlet.Filter;

import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * Configuration class for RequestResponseFilter Bean.
 * 
 * @author Sagar Mahapatra
 * @since 1.0.0
 *
 */
@Configuration
public class Config {
	/**
	 * Bean to register RequestResponse Filter.
	 * 
	 * @return the bean.
	 */
	@Bean
	public FilterRegistrationBean<Filter> registerReqResFilter() {
		FilterRegistrationBean<Filter> reqResFilterBean = new FilterRegistrationBean<>();
		reqResFilterBean.setFilter(getReqResFilter());
		reqResFilterBean.setOrder(1);
		return reqResFilterBean;
	}

	/**
	 * Bean for RequestResponseFilter.
	 * 
	 * @return the bean.
	 */
	@Bean
	public Filter getReqResFilter() {
		return new ReqResFilter();
	}
}
