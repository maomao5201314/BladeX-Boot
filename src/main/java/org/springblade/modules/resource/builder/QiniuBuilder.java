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

import com.qiniu.common.Zone;
import com.qiniu.storage.BucketManager;
import com.qiniu.storage.Configuration;
import com.qiniu.storage.UploadManager;
import com.qiniu.util.Auth;
import lombok.SneakyThrows;
import org.springblade.core.oss.OssTemplate;
import org.springblade.core.oss.rule.OssRule;
import org.springblade.core.qiniu.QiniuTemplate;
import org.springblade.core.qiniu.props.QiniuProperties;
import org.springblade.modules.resource.entity.Oss;

/**
 * QiniuBuilder
 *
 * @author Chill
 */
public class QiniuBuilder {

	@SneakyThrows
	public static OssTemplate template(Oss oss, OssRule ossRule) {
		Configuration cfg = new Configuration(Zone.zone0());
		Auth auth = Auth.create(oss.getAccessKey(), oss.getSecretKey());
		UploadManager uploadManager = new UploadManager(cfg);
		BucketManager bucketManager = new BucketManager(auth, cfg);
		QiniuProperties qiniuProperties = new QiniuProperties();
		qiniuProperties.setEndpoint(oss.getEndpoint());
		qiniuProperties.setAccessKey(oss.getAccessKey());
		qiniuProperties.setSecretKey(oss.getSecretKey());
		qiniuProperties.setBucketName(oss.getBucketName());
		return new QiniuTemplate(auth, uploadManager, bucketManager, qiniuProperties, ossRule);
	}

}
