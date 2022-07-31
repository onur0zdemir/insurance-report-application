package BootGUI.model;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class PieChartElement {

    private String insuranceType;

    private double percentage;
}
