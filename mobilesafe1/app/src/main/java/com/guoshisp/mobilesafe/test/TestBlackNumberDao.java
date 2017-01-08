package com.guoshisp.mobilesafe.test;

import java.util.List;
import java.util.Random;

import android.test.AndroidTestCase;

import com.guoshisp.mobilesafe.db.dao.BlackNumberDao;
import com.guoshisp.mobilesafe.domain.BlackNumber;

public class TestBlackNumberDao extends AndroidTestCase {
	//�V��Ʈw���[�J50�����
	public void testAdd() throws Exception {
		BlackNumberDao dao = new BlackNumberDao(getContext());
		//�Ĥ@�ӭn�Q�[�J�����X
		int number = 100000;
		Random random = new Random();
		for (int i = 0; i < 50; i++) {
			int result = (number+i);
			//����[�J�ʧ@�Crandom.nextInt(3)��ܪ��H���Ƭ�0�B1�B2
			dao.add(result+"", random.nextInt(3)+"");
		}
	}
	//��s��Ʈw�������
	public void testUpdate() throws Exception {
		BlackNumberDao dao = new BlackNumberDao(getContext());
		dao.update("100000", "999999", "2");
	}
	//������Ʈw�������
	public void testDelete() throws Exception {
		BlackNumberDao dao = new BlackNumberDao(getContext());
		dao.delete("999999");
	}
	//�d�߸�Ʈw�����Ҧ������X
	public void testFindAll() throws Exception {
		BlackNumberDao dao = new BlackNumberDao(getContext());
		List<BlackNumber> numbers = dao.findAll();
		System.out.println(numbers.size());
	}
}
