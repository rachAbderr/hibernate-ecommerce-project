package entities;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Entity;
import java.io.Serializable;

@Data
@Embeddable
public class Adress {

    @Column(name="ADRESS_ID")
    private int addressId;

    @Column(name="NUMERO_RUE")
    private int numeroRue;

    @Column(name="DESCRIPTION_RUE")
    private String descriptionRue;

    @Column(name="COMUNE")
    private String commune;

    @Column(name="VILLE")
    private String ville;

    @Column(name="PAYS")
    private String pays;

}
