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
import org.flowable.engine.impl.persistence.entity.ProcessDefinitionEntityImpl;
import org.springblade.flow.engine.utils.FlowCache;

import java.io.Serializable;
import java.util.Date;

/**
 * FlowProcess
 *
 * @author Chill
 */
@Data
public class FlowProcess implements Serializable {

	private String id;
	private String tenantId;
	private String name;
	private String key;
	private String category;
	private String categoryName;
	private Integer version;
	private String deploymentId;
	private String resourceName;
	private String diagramResourceName;
	private Integer suspensionState;
	private Date deploymentTime;

	public FlowProcess(ProcessDefinitionEntityImpl entity) {
		this.id = entity.getId();
		this.tenantId = entity.getTenantId();
		this.name = entity.getName();
		this.key = entity.getKey();
		this.category = entity.getCategory();
		this.categoryName = FlowCache.getCategoryName(entity.getCategory());
		this.version = entity.getVersion();
		this.deploymentId = entity.getDeploymentId();
		this.resourceName = entity.getResourceName();
		this.diagramResourceName = entity.getDiagramResourceName();
		this.suspensionState = entity.getSuspensionState();
	}

}
