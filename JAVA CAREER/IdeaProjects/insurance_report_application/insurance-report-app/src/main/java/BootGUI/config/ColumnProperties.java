package BootGUI.config;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ColumnProperties {

    private String[] policyColumns;

    private String[] insuranceAgencyColumns;

    private String[] customerColumns;

    private String[] paymentColumns;

    private String[] customerPolicyColumns;
}
