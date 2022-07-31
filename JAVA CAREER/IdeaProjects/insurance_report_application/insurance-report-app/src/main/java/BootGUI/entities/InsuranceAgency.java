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
@Table(name = "insurance_agency")
public class InsuranceAgency implements Serializable {

    @Id
    @Column(name = "insurance_agency_id")
    private long insurance_agency_id;

    @Column(name = "insurance_agency_company_name")
    private String insurance_agency_company_name;

    @Override
    public String toString() {
        return "Insurance Agency Id : " + insurance_agency_id +
                "   Insurance Agency Company Name : " + insurance_agency_company_name;
    }
}
