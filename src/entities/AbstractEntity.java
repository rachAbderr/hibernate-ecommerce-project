package entities;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.MappedSuperclass;
import javax.persistence.Transient;
import javax.persistence.Version;
import java.io.Serializable;
import java.util.Date;

@Data
@MappedSuperclass
public abstract class AbstractEntity implements Serializable {

    //@Column(name = "USERS_NAME")
    @Transient
    private String userName;

   // @Column(name = "CREATED")
    @Transient
    private Date date=new Date();

    @Version
    @Column (name = "VRS")
    private int vrs;



    public abstract Serializable getId ();

    public abstract void setId (Serializable id);

}
