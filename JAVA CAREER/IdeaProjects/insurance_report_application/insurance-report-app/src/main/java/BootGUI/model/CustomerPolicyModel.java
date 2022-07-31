package BootGUI.model;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor

public class CustomerPolicyModel {

   private long customer_policy_id;
   private long customer_id;
   private long policy_id;

}
