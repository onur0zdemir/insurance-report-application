package BootGUI.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import java.time.LocalDate;

@Data
@AllArgsConstructor

public class PaymentModel {

    private long payment_id;
    private long policy_id;
    private String type_of_payment;
    private long payment_amount;
    private LocalDate payment_date;

}
