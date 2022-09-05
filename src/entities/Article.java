package entities;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;


@Data
@Entity
@Table(name="T_ARTICLE")
public class Article extends AbstractEntity{

    @Id
    @Column(name="ARTICLE_ID")
    private int id;

    @Column(name="DESCRIPTION_ARTICLE")
    private String descriptionArticle;

    @Column(name="QUANTITE_STOCKE")
    private int quantiteStocke;

    @Column(name="PRIX")
    private double prix;


    @Override
    public Serializable getId() {
        return this.id;
    }
    @Override
    public void setId(Serializable id) {
        this.id = (int) id;
    }
}
