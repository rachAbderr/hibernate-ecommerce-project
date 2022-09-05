package entities;

import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Data
@Entity
@Table(name = "T_CLIENT")
@Inheritance(strategy = InheritanceType.SINGLE_TABLE)
@DiscriminatorColumn(name = "TYPE_CLIENT",discriminatorType = DiscriminatorType.STRING)
public class Client extends Person{




//    @OneToOne
//    private TypeClient typeClient;

    @OneToMany(mappedBy = "client")
    private List<Commande> commandes = new ArrayList<>();


}
