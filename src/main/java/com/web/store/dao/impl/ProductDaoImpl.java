﻿package com.web.store.dao.impl;

import java.io.Serializable;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.NoResultException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

import com.web.store.dao.ProductDao;
import com.web.store.exception.ProductNotFoundException;
import com.web.store.model.ProductBean;
import com.web.store.model.VendorBean;

@Repository
public class ProductDaoImpl implements ProductDao, Serializable {
	private static final long serialVersionUID = 1L;

	@Autowired
	SessionFactory factory;

	@Override
	public ProductBean getProductById(Integer pId) {
		Session session = factory.getCurrentSession();
		ProductBean pb = session.get(ProductBean.class, pId);
		if (pb == null) {
			throw new ProductNotFoundException("查無ID為 " + pId + " 的商品", pId);
		}
		return pb;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ProductBean> getProductByName(String pname) {
		String hql = "FROM ProductBean WHERE pname = :productName";
		List<ProductBean> list = new ArrayList<>();
		Session session = factory.getCurrentSession();
//		try {
		list = session.createQuery(hql).setParameter("productName", pname).getResultList();
//		} catch (NoResultException e) {
//			throw new ProductNotFoundException("查無名稱為 " + pname + " 的商品", pname);
//		}
		return list;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ProductBean> getProductByVendor(Integer vId) {
		String hql = "FROM ProductBean WHERE vId = :vendorId";
		List<ProductBean> list = new ArrayList<>();
		Session session = factory.getCurrentSession();
		list = session.createQuery(hql).setParameter("vendorId", vId).getResultList();
		return list;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ProductBean> getProductByVendorName(String vname) {
		VendorBean vb = null;
		List<ProductBean> list = new ArrayList<>();
		Session session = factory.getCurrentSession();
		String hql = "FROM VendorBean WHERE vname =:vname";
		List<VendorBean> vlist = new ArrayList<>();
		vlist = session.createQuery(hql).setParameter("vname", vname).getResultList();
		if (vlist.isEmpty() != true) {
			vb = vlist.get(0);
			list = getProductByVendor(vb.getvId());
		}

		return list;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ProductBean> getProductByCategory(String category) {
		String hql = "FROM ProductBean WHERE category = :ProductCategory";
		List<ProductBean> list = new ArrayList<>();
		Session session = factory.getCurrentSession();
		list = session.createQuery(hql).setParameter("ProductCategory", category).getResultList();
		return list;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<ProductBean> getAllProducts() {
		String hql = "FROM ProductBean";
		List<ProductBean> list = new ArrayList<>();
		Session session = factory.getCurrentSession();
		list = session.createQuery(hql).getResultList();
		return list;
	}

	@Override
	public Double getProductRankAVGById(Integer pId) {
		ProductBean pb = getProductById(pId);
		return pb.getRankSum() / pb.getRankCount();
	}

	@Override
	public void addProduct(ProductBean pb) {
		Session session = factory.getCurrentSession();
		VendorBean vb = session.get(VendorBean.class, pb.getvId());
		pb.setVendorBean(vb);
		session.save(pb);
	}

	@Override
	public void updateProduct(ProductBean pb) {
		Session session = factory.getCurrentSession();
		VendorBean vb = null;
		if (pb.getvId() != null) {
			vb = session.get(VendorBean.class, pb.getvId()); // prevent vendorBean disappear, need to reset it before															// every update
		}
//		ProductBean PB = new ProductBean();
//		PB.setVendorBean(vb);
//		if (pb.getpId() != null)
//			PB.setpId(pb.getpId());
//		if (pb.getPname() != null)
//			PB.setPname(pb.getPname());
//		if (pb.getPrice() != null)
//			PB.setPrice(pb.getPrice());
//		if (pb.getAmount() != null)
//			PB.setAmount(pb.getAmount());
//		if (pb.getCategory() != null)
//			PB.setCategory(pb.getCategory());
//		if (pb.getSdate() != null)
//			PB.setSdate(pb.getSdate());
//		if (pb.getExpdate() != null)
//			PB.setExpdate(pb.getExpdate());
//		if (pb.getRankSum() != null)
//			PB.setRankSum(pb.getRankSum());
//		if (pb.getRankCount() != null)
//			PB.setRankCount(pb.getRankCount());
//		if (pb.getDetail() != null)
//			PB.setDetail(pb.getDetail());
//		try {
//			if (pb.getProductImage() != null && pb.getProductImage().length() > 0)
//				PB.setProductImage(pb.getProductImage());
//			if (pb.getProductImage1() != null && pb.getProductImage1().length() > 0)
//				PB.setProductImage1(pb.getProductImage1());
//			if (pb.getProductImage2() != null && pb.getProductImage2().length() > 0)
//				PB.setProductImage2(pb.getProductImage2());
//			if (pb.getProductImage3() != null && pb.getProductImage3().length() > 0)
//				PB.setProductImage3(pb.getProductImage3());
			pb.setVendorBean(vb);
			session.update(pb);
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
	}

	@Override
	public void deleteProduct(Integer pId) {
		Session session = factory.getCurrentSession();
		ProductBean pb = session.get(ProductBean.class, pId);
		pb.setVendorBean(null); // prevent foreign key problem
		session.delete(pb);
	}

}