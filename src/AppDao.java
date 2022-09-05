import DAO.ClientDao;
import entities.Client;
import entities.Individu;
import entities.Person;

public class AppDao {

    public static void main(String[] args) {

        ClientDao clientDao = new ClientDao();
        Person ind = new Individu();
        ind.setIdentification(1);

//        try {
//            clientDao.save((Client) client);
//            clientDao.em.close();
//            System.out.println("OK");
//        }catch(Exception e){
//            clientDao.tr.rollback();
//            clientDao.em.close();
//        }

           Person client = clientDao.findById((Client) ind);
        ((Client)client).getCommandes().forEach((c)->{
            System.out.println("les articles commande par "+client.getNom());
            c.getListLigneCommande().forEach((l)->{
                System.out.println(l.getArticle().getDescriptionArticle());
            });
        });
    }
}
