package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.AllDao;
import entity.YuLeNews;

@Service
public class YuLeNewsService {

	@Autowired
	private AllDao allDao;

	public AllDao getAllDao() {
		return allDao;
	}

	public void setAllDao(AllDao allDao) {
		this.allDao = allDao;
	}

	// 返回新闻列表
	public List<YuLeNews> findlist() {
		List<YuLeNews> list = this.getAllDao().getYuLeNewsDao().findlist();
		return list;
	}
	
	// 保存一条娱乐新闻
	public void save(YuLeNews yuLeNews) {
		this.getAllDao().getYuLeNewsDao().save(yuLeNews);
	}

	// 删除娱乐新闻
	public void delete(int id) {
		YuLeNews yuLeNews = new YuLeNews();
		yuLeNews.setId(id);
		this.getAllDao().getYuLeNewsDao().delete(yuLeNews);
	}

	// 更新娱乐新闻
	public void update(YuLeNews yuLeNews) {
		this.getAllDao().getYuLeNewsDao().update(yuLeNews);
	}
}