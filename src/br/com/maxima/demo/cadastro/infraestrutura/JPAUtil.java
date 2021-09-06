package br.com.maxima.demo.cadastro.infraestrutura;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class JPAUtil {
	private static final EntityManagerFactory FACTORY_EM = Persistence.createEntityManagerFactory("demoDS");

	public static EntityManager getEntityManager()
	{
		return FACTORY_EM.createEntityManager();
	}
	
}
