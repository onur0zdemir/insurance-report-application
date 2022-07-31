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
@Table(name = "customer")
public class Customer implements Serializable {

    @Id
    @Column(name = "customer_id")
    private long customer_id;

    @Column(name = "customer_name")
    private String customer_name;

    @Column(name = "customer_surname")
    private String customer_surname;

    @Column(name = "birth_date")
    private LocalDate birth_date;

    @Column(name = "email")
    private String email;

    @Column(name = "city")
    private String city;

    @Override
    public String toString() {
        return "Customer Id : " + customer_id +
                "    Customer Name : " + customer_name +
                "    Customer Surname : " + customer_surname +
                "    Birth Date : " + birth_date +
                "    Email : " + email +
                "    City : " + city  ;
    }
}
