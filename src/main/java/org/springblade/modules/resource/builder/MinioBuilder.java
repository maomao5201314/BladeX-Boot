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
package org.springblade.modules.resource.builder;

import io.minio.MinioClient;
import lombok.SneakyThrows;
import org.springblade.core.minio.MinioTemplate;
import org.springblade.core.minio.props.MinioProperties;
import org.springblade.core.oss.OssTemplate;
import org.springblade.core.oss.rule.OssRule;
import org.springblade.modules.resource.entity.Oss;

/**
 * MinioBuilder
 *
 * @author Chill
 */
public class MinioBuilder {

	@SneakyThrows
	public static OssTemplate template(Oss oss, OssRule ossRule) {
		MinioClient minioClient = new MinioClient(oss.getEndpoint(), oss.getAccessKey(), oss.getSecretKey());
		MinioProperties minioProperties = new MinioProperties();
		minioProperties.setEndpoint(oss.getEndpoint());
		minioProperties.setAccessKey(oss.getAccessKey());
		minioProperties.setSecretKey(oss.getSecretKey());
		minioProperties.setBucketName(oss.getBucketName());
		return new MinioTemplate(minioClient, ossRule, minioProperties);
	}

}
