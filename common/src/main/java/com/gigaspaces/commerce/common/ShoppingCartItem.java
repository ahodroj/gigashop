package com.gigaspaces.commerce.common;


import java.io.Serializable;

public class ShoppingCartItem implements Serializable
{
	String skuId;
	String name;
	String price;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}

	public String getSkuId() {
		return skuId;
	}
	
	public void setSkuId(String skuId) {
		this.skuId = skuId;
	}

}
