package com.web.store.dao;

import java.util.List;

import javax.persistence.NoResultException;

import org.hibernate.NonUniqueResultException;

import com.web.store.model.CouponBean;
import com.web.store.model.CreditCardBean;
import com.web.store.model.MemberBean;
import com.web.store.model.TaxIdBean;

public interface MemberDao {

	List<MemberBean> getAllMember();

	MemberBean getMemberByAccount(String account);

	MemberBean updateMember(MemberBean mb);

	int deleteMember(MemberBean mb);

	int addMember(MemberBean member);

	void changePassword(MemberBean mb, String newPw);

	MemberBean checkIdPassword(String account, String password);

	boolean idExists(Integer mId);

	int addCreditCard(CreditCardBean cId);

	List<CreditCardBean> getCreditCardsBymId(Integer mId);

	CreditCardBean getCreditCardBycId(Integer cId);

	MemberBean getMemberBymId(Integer mId);

	MemberBean getMemberByGmail(String gmail) throws NoResultException, NonUniqueResultException;

	int addGmailMember(MemberBean member);
	
	MemberBean getMemberByLine(String line) throws NoResultException, NonUniqueResultException;
	
	int addLineMember(MemberBean member);
	
	void deleteCreditCard(Integer cId);

	List<TaxIdBean> getTaxIdBymid(Integer mId);
	
	TaxIdBean getTaxIdBytId(Integer tId);
	
	int addTaxId(TaxIdBean tId);
	
	void deleteTaxId(Integer tId);
	
	MemberBean updateVehicle(MemberBean mb);
	
	List<CouponBean> getCouponsBymId(Integer mId);
	
	int getCoupon(CouponBean cb);
	
	void useCoupon(Integer cId);
	
	void resetCoupon(Integer cId);
	
	boolean couponExist(CouponBean cb);
	
	CouponBean getCouponBycId(Integer cId);
	
	int deleteMember(Integer mId);
}