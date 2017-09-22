package stundent.service;

import java.util.List;

import student.pojo.Banji;
import student.pojo.BanjiCourse;

public interface IBanjiService {

	List<BanjiCourse> findAllBanjiCourse();

	List<Banji> findAllBanji();

	void deleteBanji(int id);

	void addBanji(Banji banji);

	void deleteBanjiCourse(int id);

	void addBanjiCourse(int banjiId, int courseId);

}
