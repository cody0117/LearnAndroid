package com.guoshisp.mobilesafe.test;

import java.util.List;
import java.util.Random;

import android.test.AndroidTestCase;

import com.guoshisp.mobilesafe.db.dao.BlackNumberDao;
import com.guoshisp.mobilesafe.domain.BlackNumber;

public class TestBlackNumberDao extends AndroidTestCase {
	//向資料庫中加入50條資料
	public void testAdd() throws Exception {
		BlackNumberDao dao = new BlackNumberDao(getContext());
		//第一個要被加入的號碼
		int number = 100000;
		Random random = new Random();
		for (int i = 0; i < 50; i++) {
			int result = (number+i);
			//執行加入動作。random.nextInt(3)表示的隨機數為0、1、2
			dao.add(result+"", random.nextInt(3)+"");
		}
	}
	//更新資料庫中的資料
	public void testUpdate() throws Exception {
		BlackNumberDao dao = new BlackNumberDao(getContext());
		dao.update("100000", "999999", "2");
	}
	//移除資料庫中的資料
	public void testDelete() throws Exception {
		BlackNumberDao dao = new BlackNumberDao(getContext());
		dao.delete("999999");
	}
	//查詢資料庫表中的所有的號碼
	public void testFindAll() throws Exception {
		BlackNumberDao dao = new BlackNumberDao(getContext());
		List<BlackNumber> numbers = dao.findAll();
		System.out.println(numbers.size());
	}
}
