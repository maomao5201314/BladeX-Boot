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
package org.springblade.flow.demo.leave.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.EqualsAndHashCode;
import org.springblade.flow.core.entity.FlowEntity;

import java.util.Date;

/**
 * 请假流程实体类
 *
 * @author Chill
 */
@Data
@TableName("blade_process_leave")
@EqualsAndHashCode(callSuper = true)
public class ProcessLeave extends FlowEntity {

	private static final long serialVersionUID = 1L;

	/**
	 * 流程定义id
	 */
	private String processDefinitionId;
	/**
	 * 流程实例id
	 */
	private String processInstanceId;
	/**
	 * 请假开始时间
	 */
	private Date startTime;
	/**
	 * 请假结束时间
	 */
	private Date endTime;
	/**
	 * 请假理由
	 */
	private String reason;
	/**
	 * 审批人
	 */
	private String taskUser;
	/**
	 * 流程申请时间
	 */
	private Date applyTime;

}
