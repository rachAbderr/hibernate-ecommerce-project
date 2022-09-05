package entities;


import lombok.Builder;
import lombok.Data;

import javax.persistence.*;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Data
@Builder
//@Entity
//@Inheritance(strategy = InheritanceType.TABLE_PER_CLASS)
@MappedSuperclass
public abstract class Person extends AbstractEntity{

    @Id
    @Column(name="IDENTIFICATION_PERSON")
    private int identification;

    @Column(name="NOM")
    private String nom;


    @ElementCollection
    @CollectionTable(name="ADRESS", joinColumns = @JoinColumn(name="IDENTIFICATION_PERSON"))
    private List<Adress> listAdresse= new ArrayList<>();

    @Column(name="TELEPHONE")
    private String telephone;

    @Column(name="FAX")
    private String fax;

    @Column(name="EMAIL")
    private String email;

    @Override
    public Serializable getId() {
        return identification;
    }

    @Override
    public void setId(Serializable id) {
        this.identification= (int) id;
    }
}
