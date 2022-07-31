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
@Table(name = "policy")
public class Policy implements Serializable {

    @Id
    @Column(name = "policy_id")
    private long policy_id;

    @Column(name = "type_of_insurance")
    private String type_of_insurance;

    @Column(name = "insurance_agency_id")
    private String insurance_agency_id;

    @Column(name = "status")
    private String status;

    @Column(name = "policy_end_date")
    private LocalDate policy_end_date;

    @Override
    public String toString() {
        return "   Policy Id : " + policy_id +
                "   Type of Insurance : " + type_of_insurance +
                "   Insurance Agency Id : " + insurance_agency_id +
                "   Status : " + status +
                "   Policy End Date : " + policy_end_date ;
    }
}
