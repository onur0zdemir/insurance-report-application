package BootGUI.service;

import BootGUI.config.ColumnProperties;
import BootGUI.entities.*;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.swing.table.DefaultTableModel;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

import static BootGUI.constants.GeneralConstants.*;

@RequiredArgsConstructor
@Service
public class MappingComboBoxService {

    @Autowired
    private PolicyService policyService;

    @Autowired
    private CustomerService customerService;

    @Autowired
    private PaymentService paymentService;

    @Autowired
    private CustomerPolicyService customerPolicyService;

    @Autowired
    private InsuranceAgencyService insuranceAgencyService;

    private final ColumnProperties columnProperties;

    public DefaultTableModel getTableModel(String selectedQueryType){

        AtomicInteger i= new AtomicInteger(0);
        String[] columns = null;
        Object [][] returnData = null;

        if(POLICIES.equals(selectedQueryType)) {
            List<Policy> policies = policyService.getAllPolicies();
            columns = columnProperties.getPolicyColumns();

            Object [][] data = new Object[policies.size()][];
            policies.forEach(eachRow -> {
                data[i.get()] = new String[]{String.valueOf(eachRow.getPolicy_id()),eachRow.getType_of_insurance(),eachRow.getInsurance_agency_id(),eachRow.getStatus(), String.valueOf(eachRow.getPolicy_end_date())};
                i.getAndIncrement();
            });

            returnData = data;
        }

        else if(CUSTOMERS.equals(selectedQueryType)) {
            List<Customer> customers = customerService.getAllCustomers();
            columns = columnProperties.getCustomerColumns();

            Object [][] data = new Object[customers.size()][];
            customers.forEach(eachRow -> {
                data[i.get()] = new String[]{String.valueOf(eachRow.getCustomer_id()),eachRow.getCustomer_name(),eachRow.getCustomer_surname(),eachRow.getCity(),eachRow.getEmail(), String.valueOf(eachRow.getBirth_date())};
                i.getAndIncrement();
            });

            returnData = data;
        }

        else if(PAYMENTS.equals(selectedQueryType)) {
            List<Payment> payments = paymentService.getAllPayments();
            columns = columnProperties.getPaymentColumns();

            Object [][] data = new Object[payments.size()][];
            payments.forEach(eachRow -> {
                data[i.get()] = new String[]{String.valueOf(eachRow.getPayment_id()),eachRow.getType_of_payment(), String.valueOf(eachRow.getPolicy_id()), String.valueOf(eachRow.getPayment_amount())+TL, String.valueOf(eachRow.getPayment_date())};
                i.getAndIncrement();
            });

            returnData = data;
        }

        else if(AGENCIES.equals(selectedQueryType)) {
            List<InsuranceAgency> insuranceAgencies = insuranceAgencyService.getAllInsuranceAgencies();
            columns = columnProperties.getInsuranceAgencyColumns();

            Object [][] data = new Object[insuranceAgencies.size()][];
            insuranceAgencies.forEach(eachRow -> {
                data[i.get()] = new String[]{String.valueOf(eachRow.getInsurance_agency_id()),eachRow.getInsurance_agency_company_name()};
                i.getAndIncrement();
            });

            returnData = data;
        }

        else if(CUSTOMER_POLICY_REL.equals(selectedQueryType)) {
            List<CustomerPolicy> customerPolicies = customerPolicyService.getAllCustomerPolicies();
            columns = columnProperties.getCustomerPolicyColumns();

            Object [][] data = new Object[customerPolicies.size()][];
            customerPolicies.forEach(eachRow -> {
                data[i.get()] = new String[]{String.valueOf(eachRow.getCustomer_id()), String.valueOf(eachRow.getPolicy_id())};
                i.getAndIncrement();
            });

            returnData = data;
        }

        return new DefaultTableModel(returnData,columns);

    }
}
