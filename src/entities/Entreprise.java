package entities;

import javax.persistence.DiscriminatorValue;
import javax.persistence.Entity;

@Entity
@DiscriminatorValue("Entreprise")
public class Entreprise extends Client{
}
