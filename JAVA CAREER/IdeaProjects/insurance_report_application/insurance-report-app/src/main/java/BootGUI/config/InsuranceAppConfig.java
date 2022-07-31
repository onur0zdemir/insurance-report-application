package BootGUI.config;

import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Slf4j
@Configuration
public class InsuranceAppConfig {

    @Bean
    @ConfigurationProperties(prefix = "column-names-displayed")
    public ColumnProperties InsuranceAppConfig(){
        return new ColumnProperties();
    }
}
