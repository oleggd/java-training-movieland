package com.movieland.service.impl;

import com.movieland.entity.Currency;
import com.movieland.rest.CurrencyRates;
import org.junit.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.springframework.web.client.RestTemplate;

import static org.junit.Assert.assertEquals;
import static org.mockito.Mockito.*;


public class CurrencyServiceImplTest {

    @Mock
    private RestTemplate restTemplate;

    @InjectMocks
    private CurrencyServiceImpl currencyService = new CurrencyServiceImpl();

    //@Before
    //public void setup() {
    //    MockitoAnnotations.initMocks(this);
    //    mockMvc = standaloneSetup(currencyService).build();
    //}

    @Test
    public void refreshCurrencyCache() {
    }

    @Test
    public void getAll() {
        CurrencyRates[] currencyRates = new CurrencyRates[2];
        CurrencyRates currencyRate = new CurrencyRates();
        currencyRate.setId(1);
        currencyRate.setCurrencyName("Dollars");
        currencyRate.setRate(101.1);
        currencyRate.setCurrencyCode("USD");
        currencyRates[0] = currencyRate;
        currencyRate.setId(2);
        currencyRate.setCurrencyName("PPP");
        currencyRate.setRate(200.20);
        currencyRate.setCurrencyCode("JPY");
        currencyRates[1] = currencyRate;
        currencyService.setServiceURL("http://test.com");
        /*when(restTemplate.getForObject("http://test.com",CurrencyRates[].class)).thenReturn(currencyRates);
        currencyService.refreshCurrencyCache();

        double price = currencyService.getPriceByCurrency(Currency.fromValue("USD"),101.1);
        assertEquals(101.1,price);
        price = currencyService.getPriceByCurrency(Currency.fromValue("JPY"),10.2);
        assertEquals(10.2,price);

        verify(restTemplate, times(1)).getForObject("http://test.com",CurrencyRates[].class);
        verifyNoMoreInteractions(restTemplate);*/
    }

    @Test
    public void getPriceByCurrency() {
    }
}