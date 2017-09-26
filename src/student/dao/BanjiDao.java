package student.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import student.pojo.Banji;
import student.pojo.BanjiCourse;

public interface BanjiDao {

	List<BanjiCourse> findAllBanjiCourse();

	List<Banji> findAllBanji();

	void deleteBanji(int id);

	void addBanji(Banji banji);

	void deleteBanjiCourse(int id);

	void addBanjiCourse(@Param(value="banjiId")int banjiId, @Param(value="courseId")int courseId);

	List<BanjiCourse> searchBanjiCourse(String classname);

}
