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

	// ���������б�
	public List<YuLeKandian> findlist() {
		List<YuLeKandian> list = this.getAllDao().getYuLeKandianDao().findlist();
		return list;
	}
	
	// ����һ����������
	public void save(YuLeKandian yuLeKandian) {
		this.getAllDao().getYuLeKandianDao().save(yuLeKandian);
	}

	// ɾ����������
	public void delete(int id) {
		YuLeKandian yuLeKandian = new YuLeKandian();
		yuLeKandian.setId(id);
		this.getAllDao().getYuLeKandianDao().delete(yuLeKandian);
	}

	// ������������
	public void update(YuLeKandian yuLeKandian) {
		this.getAllDao().getYuLeKandianDao().update(yuLeKandian);
	}
}
