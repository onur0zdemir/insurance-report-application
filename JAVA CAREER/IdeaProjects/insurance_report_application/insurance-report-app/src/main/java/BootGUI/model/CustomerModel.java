package BootGUI.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import java.time.LocalDate;

@Data
@AllArgsConstructor

public class CustomerModel {

    private long customer_id;
    private String customer_name;
    private String customer_surname;
    private LocalDate birth_date;
    private String email;
    private String city;

}
