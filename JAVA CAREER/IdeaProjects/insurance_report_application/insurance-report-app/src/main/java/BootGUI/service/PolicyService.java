package BootGUI.service;

import BootGUI.entities.Payment;
import BootGUI.entities.Policy;
import BootGUI.model.BarChartElement;
import BootGUI.model.PieChartElement;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import BootGUI.repository.PolicyRepository;

import java.util.ArrayList;
import java.util.List;

import static BootGUI.constants.GeneralConstants.*;

@Service
public class PolicyService {

    @Autowired
    private PolicyRepository policyRepository;

    @Autowired
    private PaymentService paymentService;

    public List<Policy> getAllPolicies() {
        return policyRepository.findAll();
    }

    public List<PieChartElement> getPercentagesByCategories() {
        List<Policy> allPolicies = policyRepository.findAll();

        double numberOfKaskoPolicies = 0;
        double numberOfKonutPolicies = 0;
        double numberOfSaglıkPolicies = 0;
        double numberOfDaskPolicies = 0;

        for (Policy eachPolicy : allPolicies) {
            switch (eachPolicy.getType_of_insurance()) {
                case KASKO:
                    numberOfKaskoPolicies++;
                    break;
                case KONUT:
                    numberOfKonutPolicies++;
                    break;
                case SAGLIK:
                    numberOfSaglıkPolicies++;
                    break;
                case DASK:
                    numberOfDaskPolicies++;
                    break;
            }
        }

        List<PieChartElement> pieChartElements = new ArrayList<>();
        pieChartElements.add(new PieChartElement(KASKO, (numberOfKaskoPolicies / allPolicies.size()) * 100));
        pieChartElements.add(new PieChartElement(KONUT, (numberOfKonutPolicies / allPolicies.size()) * 100));
        pieChartElements.add(new PieChartElement(DASK, (numberOfDaskPolicies / allPolicies.size()) * 100));
        pieChartElements.add(new PieChartElement(SAGLIK, (numberOfSaglıkPolicies / allPolicies.size()) * 100));

        return pieChartElements;
    }

    public List<BarChartElement> getPaymentDetailsByCategories() {

        List<Policy> allPolicies = policyRepository.findAll();
        List<Payment> allPayments = paymentService.getAllPayments();

        double totalPaymentOfKaskoPolicies = 0;
        double totalPaymentOfKonutPolicies = 0;
        double totalPaymentOfSaglıkPolicies = 0;
        double totalPaymentOfDaskPolicies = 0;

        for (Policy eachPolicy : allPolicies) {
            switch (eachPolicy.getType_of_insurance()) {
                case KASKO:
                    totalPaymentOfKaskoPolicies+= allPayments.stream().filter(p -> eachPolicy.getPolicy_id() == p.getPolicy_id()).mapToDouble(Payment::getPayment_amount).sum();
                    break;
                case KONUT:
                    totalPaymentOfKonutPolicies+= allPayments.stream().filter(p -> eachPolicy.getPolicy_id() == p.getPolicy_id()).mapToDouble(Payment::getPayment_amount).sum();
                    break;
                case SAGLIK:
                    totalPaymentOfSaglıkPolicies+= allPayments.stream().filter(p -> eachPolicy.getPolicy_id() == p.getPolicy_id()).mapToDouble(Payment::getPayment_amount).sum();
                    break;
                case DASK:
                    totalPaymentOfDaskPolicies+= allPayments.stream().filter(p -> eachPolicy.getPolicy_id() == p.getPolicy_id()).mapToDouble(Payment::getPayment_amount).sum();
                    break;
            }
        }

        List<BarChartElement> barChartElements = new ArrayList<>();
        barChartElements.add(new BarChartElement(KASKO, totalPaymentOfKaskoPolicies));
        barChartElements.add(new BarChartElement(KONUT, totalPaymentOfKonutPolicies));
        barChartElements.add(new BarChartElement(DASK, totalPaymentOfDaskPolicies));
        barChartElements.add(new BarChartElement(SAGLIK, totalPaymentOfSaglıkPolicies));

        return barChartElements;
    }
}
