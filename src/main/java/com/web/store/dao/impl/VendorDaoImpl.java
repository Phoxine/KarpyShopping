﻿package com.web.store.dao.impl;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.NoResultException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.store.dao.VendorDao;
import com.web.store.exception.VendorErrorException;
import com.web.store.model.ProductBean;
import com.web.store.model.VendorBean;

@Repository
public class VendorDaoImpl implements Serializable, VendorDao {

	@Autowired
	SessionFactory factory;

	private static final long serialVersionUID = 1L;

	@SuppressWarnings("unchecked")
	@Override
	public List<VendorBean> getAllVendor() {
		String hql = "FROM VendorBean";
		Session session = null;
		List<VendorBean> list = new ArrayList<>();
		session = factory.getCurrentSession();
		list = session.createQuery(hql).getResultList();
		return list;
	}

	@Override
	public void addVendor(VendorBean vb) {
		Session session = factory.getCurrentSession();
		String hql = "FROM VendorBean WHERE vname =:vname";
		try {
			session.createQuery(hql).setParameter("vname", vb.getVname()).getSingleResult();
//			throw new VendorErrorException("此廠商已存在 : ", vb.getVname());
		} catch (NoResultException e) {
			session.save(vb);
		}
	}

	@Override
	public VendorBean getVendorByvname(String vname) {
		VendorBean vb = null;
		Session session = factory.getCurrentSession();
		String hql = "FROM VendorBean WHERE vname =:vname";
		try {
			vb = (VendorBean) session.createQuery(hql).setParameter("vname", vname).getSingleResult();

		} catch (NoResultException e) {
			throw new VendorErrorException("資料庫內無此廠商 : ", vname);
		}
		return vb;
	}

	@Override
	public VendorBean getVendorByvId(Integer vId) {
		Session session = factory.getCurrentSession();
		VendorBean vb = session.get(VendorBean.class, vId);
		if (vb == null) {
			throw new VendorErrorException("查無此廠商", vId.toString());
		}
		return vb;
	}

	@Override
	public void updateVendor(VendorBean vb) {
		Session session = factory.getCurrentSession();

		VendorBean vbb = getVendorByvId(vb.getvId());
		if (vb.getVname() != null && vb.getVname().trim().length() > 0)
			vbb.setVname(vb.getVname());
		if (vb.getAddr() != null && vb.getAddr().trim().length() > 0)
			vbb.setAddr(vb.getAddr());
		if (vb.getTel() != null && vb.getTel().trim().length() > 0)
			vbb.setTel(vb.getTel());
		if (vb.getEmail() != null && vb.getEmail().trim().length() > 0)
			vbb.setEmail(vb.getEmail());
		
		session.saveOrUpdate(vbb);
	}

	@SuppressWarnings("unchecked")
	@Override
	public void removeVendor(Integer vId) {
		// TODO Auto-generated method stub
		Session session = factory.getCurrentSession();
		String hql = "FROM ProductBean WHERE vId =:vId";
		List<ProductBean> list = session.createQuery(hql).setParameter("vId", vId).getResultList();
		System.out.println(list.size());
		for (ProductBean pb : list) {
			pb.setVendorBean(null); // prevent foreign key problem
			session.delete(pb);
		}
		VendorBean vb = session.get(VendorBean.class, vId);
		session.delete(vb);
	}

}