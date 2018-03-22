package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.AllDao;
import entity.YuLeKandian;

@Service
public class YuLeKandianService {

	@Autowired
	private AllDao allDao;

	public AllDao getAllDao() {
		return allDao;
	}

	public void setAllDao(AllDao allDao) {
		this.allDao = allDao;
	}

	// 返回新闻列表
	public List<YuLeKandian> findlist() {
		List<YuLeKandian> list = this.getAllDao().getYuLeKandianDao().findlist();
		return list;
	}
	
	// 保存一条娱乐新闻
	public void save(YuLeKandian yuLeKandian) {
		this.getAllDao().getYuLeKandianDao().save(yuLeKandian);
	}

	// 删除娱乐新闻
	public void delete(int id) {
		YuLeKandian yuLeKandian = new YuLeKandian();
		yuLeKandian.setId(id);
		this.getAllDao().getYuLeKandianDao().delete(yuLeKandian);
	}

	// 更新娱乐新闻
	public void update(YuLeKandian yuLeKandian) {
		this.getAllDao().getYuLeKandianDao().update(yuLeKandian);
	}
}
