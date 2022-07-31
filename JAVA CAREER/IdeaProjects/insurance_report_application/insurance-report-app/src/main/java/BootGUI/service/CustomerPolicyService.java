package BootGUI.service;

import BootGUI.entities.CustomerPolicy;
import BootGUI.repository.CustomerPolicyRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CustomerPolicyService {

    @Autowired
    private CustomerPolicyRepository customerPolicyRepository;

    public List<CustomerPolicy> getAllCustomerPolicies() {
        return customerPolicyRepository.findAll();
    }
}
