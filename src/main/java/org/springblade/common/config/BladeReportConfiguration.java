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
package org.springblade.common.config;

import org.springblade.report.datasource.ReportDataSource;
import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.sql.DataSource;

/**
 * 报表配置类
 *
 * @author Chill
 */
@Configuration
@ConditionalOnProperty(value = "report.enabled", havingValue = "true", matchIfMissing = true)
public class BladeReportConfiguration {

	/**
	 * 自定义报表可选数据源
	 */
	@Bean
	public ReportDataSource reportDataSource(DataSource dataSource) {
		return new ReportDataSource(dataSource);
	}

}
