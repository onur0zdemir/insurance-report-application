package BootGUI;

import BootGUI.entities.Policy;
import BootGUI.model.BarChartElement;
import BootGUI.model.PieChartElement;
import BootGUI.service.*;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartPanel;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.CategoryPlot;
import org.jfree.chart.plot.PiePlot;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.chart.util.Rotation;
import org.jfree.data.category.DefaultCategoryDataset;
import org.jfree.data.general.DefaultPieDataset;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.context.annotation.Configuration;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.List;

@Configuration
@SpringBootApplication
public class InsuranceInfoReportGUI extends JFrame {

    private JPanel rootPanel1;
    private JTabbedPane tabbedPane1;
    private JComboBox comboBox1;
    private JTable table1;
    private JButton barChartButton;
    private JTable queryTable;
    private JComboBox queryTypeCombo;
    private JCheckBox plsqlCheckBox;
    private JTextArea manualQueryInput;
    private JButton queryButton;
    private JPanel chartPanel;
    private JButton pieChartOluşturButton;
    private JButton graphicButton;

    @Autowired
    private MappingComboBoxService mappingComboBoxService;

    @Autowired
    private PolicyService policyService;


    public InsuranceInfoReportGUI() {
        createQueryTypeCombo();
        manualQueryInput.setEnabled(false);

        queryButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                final String selectedQueryType = (String) (queryTypeCombo.getSelectedItem());
                queryTable.setModel(mappingComboBoxService.getTableModel(selectedQueryType));
            }
        });
        barChartButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                createBarChart();
            }
        });
        pieChartOluşturButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                createPieChart();
            }
        });
    }

    public static void main(String[] args) {
        var ctx = new SpringApplicationBuilder(InsuranceInfoReportGUI.class)
                .headless(false).run(args);

        EventQueue.invokeLater(() -> {

            var insuranceInfoReportGUI = ctx.getBean(InsuranceInfoReportGUI.class);
            insuranceInfoReportGUI.setContentPane(insuranceInfoReportGUI.rootPanel1);
            insuranceInfoReportGUI.setTitle("Sigorta Finans Raporu");
            insuranceInfoReportGUI.setSize(400, 500);
            insuranceInfoReportGUI.setVisible(true);
            insuranceInfoReportGUI.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        });
    }

    private void createQueryTypeCombo() {
        queryTypeCombo.setModel(new DefaultComboBoxModel(new String[]{"Poliçeler", "Müşteriler", "Ödeme Bilgileri", "Acenteler", "Müşteri-Poliçe İlişkisi"}));
        ;
    }

    private void createBarChart() {

        List<BarChartElement> barChartElementList = policyService.getPaymentDetailsByCategories();

        DefaultCategoryDataset barChartData = new DefaultCategoryDataset();

        barChartElementList.forEach(element -> {
            barChartData.setValue(element.getTotalPayment(),"a",element.getInsuranceType());
        });

        JFreeChart barChart = ChartFactory.createBarChart("Ürün Bazlı Tahsilat", "Ürünler", "Toplam Tahsilat (TL)", barChartData, PlotOrientation.VERTICAL, false, true, false);
        CategoryPlot barch = barChart.getCategoryPlot();
        barch.setRangeGridlinePaint(Color.ORANGE);

        ChartPanel barPanel = new ChartPanel(barChart);
        chartPanel.add(barPanel,BorderLayout.CENTER);
        chartPanel.validate();
    }

    private void createPieChart() {

        List<PieChartElement> pieChartElementList = policyService.getPercentagesByCategories();

        DefaultPieDataset pieChartData = new DefaultPieDataset();

        pieChartElementList.forEach(element -> {
            double percentage = BigDecimal.valueOf(element.getPercentage())
                    .setScale(2, RoundingMode.HALF_UP)
                    .doubleValue();

            pieChartData.setValue(element.getInsuranceType()+" %"+percentage,percentage);
        });

        JFreeChart barChart = ChartFactory.createPieChart("Kategori bazlı yüzdelikler", pieChartData,true, true,false);
        PiePlot plot = (PiePlot) barChart.getPlot();
        plot.setStartAngle(90);
        plot.setDirection(Rotation.CLOCKWISE);
        plot.setForegroundAlpha(1f);

        ChartPanel barPanel = new ChartPanel(barChart);
        chartPanel.removeAll();
        chartPanel.add(barPanel,BorderLayout.CENTER);
        chartPanel.validate();
    }
}
