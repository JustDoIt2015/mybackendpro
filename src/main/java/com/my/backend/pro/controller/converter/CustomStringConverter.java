package com.my.backend.pro.controller.converter;

import org.springframework.core.convert.converter.Converter;
import org.springframework.web.bind.support.WebArgumentResolver;
import org.springframework.web.method.support.HandlerMethodArgumentResolver;

public class CustomStringConverter implements Converter<String, String> {

	public String convert(String source) {
		try {
			source = source.trim();
			if(source.equals("")){
				source = null;
			}
			return source;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
