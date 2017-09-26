package stundent.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import student.dao.BanjiDao;
import student.pojo.Banji;
import student.pojo.BanjiCourse;
import stundent.service.IBanjiService;

@Service("banjiService")
public class BanjiServiceImpl implements IBanjiService{
	
	@Resource(name="banjiDao")
	private BanjiDao banjiDao;

	@Override
	public List<BanjiCourse> findAllBanjiCourse() {
		return banjiDao.findAllBanjiCourse();
	}

	@Override
	public List<Banji> findAllBanji() {
		return banjiDao.findAllBanji();
	}

	@Override
	public void deleteBanji(int id) {
		banjiDao.deleteBanji(id);
	}

	@Override
	public void addBanji(Banji banji) {
		banjiDao.addBanji(banji);
	}

	@Override
	public void deleteBanjiCourse(int id) {
		banjiDao.deleteBanjiCourse(id);
	}

	@Override
	public void addBanjiCourse(int banjiId, int courseId) {
		banjiDao.addBanjiCourse(banjiId, courseId);
	}

	@Override
	public List<BanjiCourse> searchBanjiCourse(String classname) {
		return banjiDao.searchBanjiCourse(classname);
	}
	
	
}
