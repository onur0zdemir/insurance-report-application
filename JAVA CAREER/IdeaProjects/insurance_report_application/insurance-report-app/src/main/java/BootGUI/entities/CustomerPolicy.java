package BootGUI.entities;


import lombok.Getter;
import lombok.Setter;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;


@Entity
@Getter
@Setter
@Table(name = "customer_policy")
public class CustomerPolicy implements Serializable {

    @Id
    @Column(name = "customer_policy_id")
    private long customer_policy_id;

    @Column(name = "customer_id")
    private long customer_id;

    @Column(name = "policy_id")
    private long policy_id;

    @Override
    public String toString() {
        return "Customer Policy Id : " + customer_policy_id +
                "   Customer Id : " + customer_id +
                "   Policy Id : " + policy_id
                ;
    }
}
