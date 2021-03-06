package br.com.ifpe.smartClub.model;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class CompraDao {
	private static final String PERSISTENCE_UNIT = "smartClub";
	public void salvar(Compra compra) {
		EntityManagerFactory factory = Persistence.createEntityManagerFactory(PERSISTENCE_UNIT);
		EntityManager manager = factory.createEntityManager();
		manager.getTransaction().begin();
		manager.persist(compra);
		manager.getTransaction().commit();
		manager.close();
		factory.close();
	}

}
