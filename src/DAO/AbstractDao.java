package DAO;

import entities.AbstractEntity;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import java.util.List;

public  class AbstractDao<T extends AbstractEntity>{
    SessionFactory session = new SessionFactory();
    public EntityManager em = session.getEntityManager();
    public EntityTransaction tr = session.getTransaction();


    public void save (T entity){
        tr.begin();
        em.persist(entity);
        tr.commit();

    }

    public T findById(T entity){
        T entityFound = (T) em.find(entity.getClass(),entity.getId());
        return entityFound;
    }

    public List<T> findAll(T entity){
        List<T> list = em.createQuery("select o from "+entity.getClass().getSimpleName()).getResultList();
        return list;
    }


}
