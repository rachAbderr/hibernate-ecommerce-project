package entities;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.Table;

@Data
@Entity
@Table(name="T_FOURNISSEUR")
public class Fournisseur extends Person{




}
