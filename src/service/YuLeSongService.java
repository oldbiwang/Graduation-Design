package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.AllDao;
import entity.YuLeSong;

@Service
public class YuLeSongService {

	@Autowired
	private AllDao allDao;

	public AllDao getAllDao() {
		return allDao;
	}

	public void setAllDao(AllDao allDao) {
		this.allDao = allDao;
	}

	// ���������б�
	public List<YuLeSong> findlist() {
		List<YuLeSong> list = this.getAllDao().getYuLeSongDao().findlist();
		return list;
	}
	
	// ����һ����������
	public void save(YuLeSong yuLeSong) {
		this.getAllDao().getYuLeSongDao().save(yuLeSong);
	}

	// ɾ����������
	public void delete(int id) {
		YuLeSong yuLeSong = new YuLeSong();
		yuLeSong.setId(id);
		this.getAllDao().getYuLeSongDao().delete(yuLeSong);
	}

	// ������������
	public void update(YuLeSong yuLeSong) {
		this.getAllDao().getYuLeSongDao().update(yuLeSong);
	}
}