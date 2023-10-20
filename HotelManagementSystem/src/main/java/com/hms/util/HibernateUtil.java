package com.hms.util;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class HibernateUtil {

	private HibernateUtil() {}
	
	private static EntityManagerFactory factory=null;
	
	public static  EntityManagerFactory getFactory()
	{
		if(factory==null)
		{
		 factory = Persistence.createEntityManagerFactory("hms");
		}
		return factory;
	}
}
