package com.gigaspaces.commerce;

import java.util.ArrayList;
import java.util.Map;

import org.openspaces.core.GigaSpace;
import org.openspaces.core.GigaSpaceConfigurer;
import org.openspaces.core.space.UrlSpaceConfigurer;

import com.gigaspaces.commerce.common.ShoppingCartItem;
import com.gigaspaces.httpsession.models.SpaceSessionByteArray;
import com.gigaspaces.httpsession.serialize.CompressUtils;
import com.gigaspaces.httpsession.serialize.SerializeUtils;
import com.gigaspaces.httpsession.sessions.FullStoreMode;

public class MainClass {
	
	
	public static void main(String [] args) {
		
		String sessionId = "D3D5D69455F34BEB9A0CD3D8D19DBBC6";
		
		GigaSpace gigaSpace = new GigaSpaceConfigurer(new UrlSpaceConfigurer("jini://*/*/space?groups=ahodroj")).gigaSpace();
		
		SpaceSessionByteArray ba = gigaSpace.readById(SpaceSessionByteArray.class, sessionId);
		
		CompressUtils.register(null);
		SerializeUtils.register(null);
		
		FullStoreMode fsm = new FullStoreMode();
		
		Map<Object, Object> map = fsm.getAttribures(ba, null);
		
		ArrayList<ShoppingCartItem> items = (ArrayList<ShoppingCartItem>) map.get("cart");
	
		for(ShoppingCartItem sci : items) {
			System.out.println("SKU: " + sci.getSkuId() + ", Name: " + sci.getName() + ", Price: " + sci.getPrice());
		}
	}
}
