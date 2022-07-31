package BootGUI.service;

import BootGUI.entities.InsuranceAgency;
import BootGUI.repository.InsuranceAgencyRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class InsuranceAgencyService {

    @Autowired
    private InsuranceAgencyRepository insuranceAgencyRepository;

    public List<InsuranceAgency> getAllInsuranceAgencies() {
        return insuranceAgencyRepository.findAll();
    }
}
