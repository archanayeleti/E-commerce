package com.demo.model;

public class ProductBean {
	private int ProductId;
	private String ProductName;
	private String Desc;
	private double Price;
	private int CategoryId;
	//private String Icon;
	
	
	public int getProductId() {
		return ProductId;
	}
	public void setProductId(int productId) {
		ProductId = productId;
	}
	public String getProductName() {
		return ProductName;
	}
	public void setProductName(String productName) {
		ProductName = productName;
	}
	public String getDesc() {
		return Desc;
	}
	public void setDesc(String desc) {
		Desc = desc;
	}
	public double getPrice() {
		return Price;
	}
	public void setPrice(double price) {
		Price = price;
	}
	public int getCategoryId() {
		return CategoryId;
	}
	public void setCategoryId(int categoryId) {
		CategoryId = categoryId;
	}
//	public String getIcon() {
//		return Icon;
//	}
//	public void setIcon(String icon) {
//		Icon = icon;
//	}

}
