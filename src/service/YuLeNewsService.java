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

	// ���������б�
	public List<YuLeNews> findlist() {
		List<YuLeNews> list = this.getAllDao().getYuLeNewsDao().findlist();
		return list;
	}
	
	// ����һ����������
	public void save(YuLeNews yuLeNews) {
		this.getAllDao().getYuLeNewsDao().save(yuLeNews);
	}

	// ɾ����������
	public void delete(int id) {
		YuLeNews yuLeNews = new YuLeNews();
		yuLeNews.setId(id);
		this.getAllDao().getYuLeNewsDao().delete(yuLeNews);
	}

	// ������������
	public void update(YuLeNews yuLeNews) {
		this.getAllDao().getYuLeNewsDao().update(yuLeNews);
	}
}