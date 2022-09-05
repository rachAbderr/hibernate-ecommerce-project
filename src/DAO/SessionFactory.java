package DAO;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.transaction.Transaction;

public class SessionFactory {

    protected EntityManagerFactory emf = Persistence.createEntityManagerFactory("ajcUnit");
    protected EntityManager em = emf.createEntityManager();
    protected EntityTransaction transaction = em.getTransaction();

    public EntityManager getEntityManager(){
        return em;
    }

    public EntityTransaction getTransaction(){
        return transaction;
    }

}
