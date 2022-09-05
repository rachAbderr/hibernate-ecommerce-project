import entities.*;
import org.hibernate.Transaction;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import java.time.LocalDate;

public class Main {
    public static void main(String[] args) {
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("ajcUnit");
        EntityManager em = emf.createEntityManager();
        EntityTransaction transaction = em.getTransaction();

        /*Commande*/
        Commande commande = new Commande();
        commande.setNumeroCommand(1);
        commande.setDateCommand(LocalDate.now());

        /*Adresse*/
        Adress adress =new Adress();
        adress.setNumeroRue(71);
        adress.setVille("Villejuif");
        adress.setPays("France");

        commande.setAdresseLivraison(adress);

        /*LigneCommande*/
        LigneCommande ligneCommande1 = new LigneCommande();
        ligneCommande1.setNumeroLigne(1);
        Article article1 = new Article();
        article1.setId(1);
        ligneCommande1.setArticle(article1);

        LigneCommande ligneCommande2 = new LigneCommande();
        ligneCommande2.setNumeroLigne(2);
        Article article2 = new Article();
        article2.setId(2);
        ligneCommande2.setArticle(article2);

        commande.getListLigneCommande().add(ligneCommande1);
        commande.getListLigneCommande().add(ligneCommande2);

        /*Clients*/
        Person individu = new Individu();
        individu.setIdentification(1);
        Person entreprise = new Entreprise();
        entreprise.setIdentification(2);

//        Person client1 = new Client();
//        ((Client)client1).setTypeClient(individu);
//        client1.setIdentification(1);
        Adress adressClient1 = new Adress();
        adressClient1.setNumeroRue(10);
        individu.getListAdresse().add(adressClient1);
        individu.getListAdresse().add(adress);
//        commande.setClient(individu);
        commande.setClient((Client) individu);
//        Person client2 = new Client();
//        ((Client)client2).setTypeClient(entreprise);
        entreprise.setIdentification(2);
        Adress adressClient2 = new Adress();
        adressClient2.setNumeroRue(20);
        entreprise.getListAdresse().add(adressClient2);

        /*Fournisseur*/
        Person fournisseur = new Fournisseur();
        fournisseur.setIdentification(3);
        fournisseur.getListAdresse().add(adressClient2);
        commande.setFournisseur((Fournisseur) fournisseur);

        
        try{
            transaction.begin();
//            em.persist(client1);
//            em.persist(client2);
            em.persist(fournisseur);
            em.persist(commande);
            em.persist(article1);
            em.persist(article2);
            em.persist(individu);
            em.persist(entreprise);
            transaction.commit();
            em.close();
            System.out.println("OK");
        }catch (Exception e){
            transaction.rollback();
            e.printStackTrace();
            em.close();
        }

    }
}
