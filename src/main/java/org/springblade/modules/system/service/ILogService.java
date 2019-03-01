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
package org.springblade.modules.system.service;

import org.springblade.core.log.model.LogApi;
import org.springblade.core.log.model.LogError;
import org.springblade.core.log.model.LogUsual;

/**
 * 服务类
 *
 * @author Chill
 */
public interface ILogService {

	/**
	 * 保存通用日志
	 *
	 * @param log
	 * @return
	 */
	Boolean saveUsualLog(LogUsual log);

	/**
	 * 保存操作日志
	 *
	 * @param log
	 * @return
	 */
	Boolean saveApiLog(LogApi log);

	/**
	 * 保存错误日志
	 *
	 * @param log
	 * @return
	 */
	Boolean saveErrorLog(LogError log);

}
