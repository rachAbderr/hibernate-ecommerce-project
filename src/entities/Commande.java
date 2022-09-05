package entities;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Data
@Entity
public class Commande extends AbstractEntity{

    @Id
    @Column(name="NUMERO_COMMAND")
    private int numeroCommand;

    @Column(name="DATE_COMMAND")
    private LocalDate dateCommand;

    @Column(name="CONDITION_COMMAND")
    private String conditionCommand;



    @ManyToOne
    @JoinColumn(name="IDENTIFICATION_CLIENT")
    private Client client;

    @ManyToOne
    @JoinColumn(name="IDENTIFICATION_FOURNISSEUR")
    private Fournisseur fournisseur;

    @ElementCollection
    @CollectionTable(name="LIGNE_COMMANDE", joinColumns = @JoinColumn(name="NUMERO_COMMAND"))
    private List<LigneCommande> listLigneCommande = new ArrayList<>();

    @Embedded
    private Adress adresseLivraison;

    @Override
    public Serializable getId() {
        return numeroCommand;
    }

    @Override
    public void setId(Serializable id) {
        this.numeroCommand= (int) id;
    }


//    @Override
//    public Serializable getId() {
//        return null;
//    }
//
//    @Override
//    public void setId(Serializable id) {
//
//    }
}
