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
package org.springblade.flow.engine.entity;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * 运行实体类
 *
 * @author Chill
 */
@Data
public class FlowExecution implements Serializable {

	private static final long serialVersionUID = 1L;

	private String id;
	private String name;
	private String startUserId;
	private String startUser;
	private Date startTime;
	private String taskDefinitionId;
	private String taskDefinitionKey;
	private String category;
	private String categoryName;
	private String processInstanceId;
	private String processDefinitionId;
	private String processDefinitionKey;
	private String activityId;
	private int suspensionState;
	private String executionId;

}
