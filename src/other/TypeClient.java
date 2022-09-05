package other;


import lombok.Data;

import javax.persistence.*;
@Data
//@Entity
//@Table(name="T_TYPE_CLIENT")
//@Inheritance(strategy = InheritanceType.SINGLE_TABLE)
//@DiscriminatorColumn(name = "TYPE_CLIENT",discriminatorType = DiscriminatorType.STRING)
public abstract class TypeClient {

        @Id
        @Column(name="ID_TYPE_CLIENT")
        private int id;
}
