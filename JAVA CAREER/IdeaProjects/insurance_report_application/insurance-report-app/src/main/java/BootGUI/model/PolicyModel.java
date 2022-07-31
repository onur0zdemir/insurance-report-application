package BootGUI.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import java.time.LocalDate;

@Data
@AllArgsConstructor

public class PolicyModel {

    private long policy_id;
    private String type_of_insurance;
    private String insurance_agency_id;
    private String status;
    private LocalDate policy_end_date;

}
