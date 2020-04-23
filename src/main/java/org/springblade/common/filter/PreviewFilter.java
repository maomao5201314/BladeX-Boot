/*
 *      Copyright (c) 2018-2028, Chill Zhuang All rights reserved.
 *
 *  Redistribution and use in source and binary forms, with or without
 *  modification, are permitted provided that the following conditions are met:
 *
 *  Redistributions of source code must retain the above copyright notice,
 *  this list of conditions and the following disclaimer.
 *  Redistributions in binary form must reproduce the above copyright
 *  notice, this list of conditions and the following disclaimer in the
 *  documentation and/or other materials provided with the distribution.
 *  Neither the name of the dreamlu.net developer nor the names of its
 *  contributors may be used to endorse or promote products derived from
 *  this software without specific prior written permission.
 *  Author: Chill 庄骞 (smallchill@163.com)
 */
package org.springblade.common.filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * 演示过滤器
 *
 * @author Chill
 */
public class PreviewFilter implements Filter {

	private static final List<String> KEYS = new ArrayList<>();

	static {
		KEYS.add("notice");
		KEYS.add("process");
		KEYS.add("work");
		KEYS.add("token");
	}


	@Override
	public void init(FilterConfig filterConfig) {
	}


	@Override
	public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {

		HttpServletRequest httpServletRequest = (HttpServletRequest) servletRequest;
		String path = httpServletRequest.getServletPath();
		String method = httpServletRequest.getMethod();

		String get = "GET";
		if (method.equals(get) || KEYS.stream().anyMatch(path::contains)) {
			filterChain.doFilter(servletRequest, servletResponse);
		} else {
			throw new RuntimeException("演示环境暂时无法操作！");
		}

	}

	@Override
	public void destroy() {
	}
}
