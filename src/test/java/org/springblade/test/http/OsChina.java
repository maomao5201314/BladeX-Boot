package org.springblade.test.http;

import lombok.Getter;
import lombok.Setter;
import org.springblade.core.http.CssQuery;

import java.util.List;

@Getter
@Setter
public class OsChina {

	@CssQuery(value = "head > title", attr = "text")
	private String title;

	@CssQuery(value = "#v_news .page .news", inner = true)
	private List<VNews> vNews;

	@CssQuery(value = ".blog-container .blog-list div", inner = true)
	private List<VBlog> vBlogList;

}
