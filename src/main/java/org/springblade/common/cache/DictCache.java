package org.springblade.common.cache;

import org.springblade.core.cache.constant.CacheConstant;
import org.springblade.core.cache.utils.CacheUtil;
import org.springblade.core.tool.utils.Func;
import org.springblade.core.tool.utils.SpringUtil;
import org.springblade.core.tool.utils.StringPool;
import org.springblade.modules.system.entity.Dict;
import org.springblade.modules.system.service.IDictService;

import java.util.List;

/**
 * DictCache
 *
 * @author Chill
 */
public class DictCache {

	private static IDictService dictService;

	static {
		dictService = SpringUtil.getBean(IDictService.class);
	}

	/**
	 * 获取字典值
	 *
	 * @param code    字典编号
	 * @param dictKey 字典键
	 * @return
	 */
	public static String getValue(String code, Integer dictKey) {
		String dictValue = CacheUtil.get(CacheConstant.DICT_VALUE, code + StringPool.UNDERSCORE + dictKey, String.class);
		if (Func.isEmpty(dictValue)) {
			String value = dictService.getValue(code, dictKey);
			if (Func.isNotEmpty(value)) {
				CacheUtil.put(CacheConstant.DICT_VALUE, code + StringPool.UNDERSCORE + dictKey, value);
				return value;
			} else {
				return StringPool.EMPTY;
			}
		} else {
			return dictValue;
		}
	}

	/**
	 * 获取字典集合
	 *
	 * @param code 字典编号
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public static List<Dict> getList(String code) {
		Object dictList = CacheUtil.get(CacheConstant.DICT_LIST, code);
		if (Func.isEmpty(dictList)) {
			List<Dict> list = dictService.getList(code);
			if (Func.isNotEmpty(list)) {
				CacheUtil.put(CacheConstant.DICT_LIST, code, list);
				return list;
			} else {
				return null;
			}
		} else {
			return (List<Dict>) dictList;
		}
	}

}
