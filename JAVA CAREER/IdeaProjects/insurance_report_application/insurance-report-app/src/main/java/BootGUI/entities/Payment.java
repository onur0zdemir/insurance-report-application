package BootGUI.entities;


import lombok.Getter;
import lombok.Setter;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.time.LocalDate;

@Entity
@Getter
@Setter
@Table(name = "payment")
public class Payment implements Serializable {

    @Id
    @Column(name = "payment_id")
    private long payment_id;

    @Column(name = "policy_id")
    private long policy_id;

    @Column(name = "type_of_payment")
    private String type_of_payment;

    @Column(name = "payment_amount")
    private long payment_amount;

    @Column(name = "payment_date")
    private LocalDate payment_date;

    @Override
    public String toString() {
        return "Payment Id : " + payment_id +
                "   Policy Id : " + policy_id +
                "   Type of Payment : " + type_of_payment +
                "   Payment Amount : " + payment_amount +
                "   Payment Date : " + payment_date;
    }
}
