package entities;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Data
@Embeddable
public class LigneCommande {

    @Column(name="NUMERO_LIGNE")
    private int numeroLigne;

    @Column(name="QUANTITY_COMMANDE")
    private int quantiteCommande;

    @OneToOne
    @JoinColumn(name="ARTICLE_ID")
    private Article article;
}
