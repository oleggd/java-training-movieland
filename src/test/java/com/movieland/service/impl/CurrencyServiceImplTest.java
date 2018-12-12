package com.movieland.service.impl;

import com.movieland.entity.Currency;
import com.movieland.rest.CurrencyRates;
import com.movieland.service.exception.AppException;
import org.junit.Before;
import org.junit.Test;
import org.mockito.*;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.web.client.RestTemplate;

import java.util.HashMap;
import java.util.Map;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;
import static org.mockito.Mockito.*;
import static org.springframework.test.web.servlet.setup.MockMvcBuilders.standaloneSetup;


public class CurrencyServiceImplTest {
    private MockMvc mockMvc;
    @Mock
    private RestTemplate restTemplate;

    @InjectMocks
    private CurrencyServiceImpl currencyService = new CurrencyServiceImpl();

    @Before
    public void setup() {
        MockitoAnnotations.initMocks(this);
        mockMvc = standaloneSetup(currencyService).build();
    }

    @Test
    public void getAll() {
        Map<Currency, Double> currencyResult = new HashMap<>();

        CurrencyRates[] currencyRates = new CurrencyRates[2];
        currencyRates[0] = new CurrencyRates();
        currencyRates[0].setId(1);
        currencyRates[0].setCurrencyName("Dollars");
        currencyRates[0].setRate(10.0);
        currencyRates[0].setCurrencyCode("USD");
        currencyRates[1] = new CurrencyRates();
        currencyRates[1].setId(2);
        currencyRates[1].setCurrencyName("PPP");
        currencyRates[1].setRate(2.0);
        currencyRates[1].setCurrencyCode("UAH");
        currencyService.setServiceURL("http://test.com.ua");
        when(restTemplate.getForObject(Mockito.anyString(),ArgumentMatchers.any(Class.class)
        )).thenReturn(currencyRates);

        currencyResult = currencyService.getAll();
        assertTrue(currencyResult.containsKey(Currency.USD));
        assertEquals(2,currencyResult.size());

        verify(restTemplate, times(1)).getForObject(Mockito.anyString(),ArgumentMatchers.any(Class.class));
        verifyNoMoreInteractions(restTemplate);
    }

    @Test
    public void getPriceByCurrency() {
        CurrencyRates[] currencyRates = new CurrencyRates[2];
        currencyRates[0] = new CurrencyRates();
        currencyRates[0].setId(1);
        currencyRates[0].setCurrencyName("Dollars");
        currencyRates[0].setRate(30.0);
        currencyRates[0].setCurrencyCode("USD");
        currencyRates[1] = new CurrencyRates();
        currencyRates[1].setId(2);
        currencyRates[1].setCurrencyName("PPP");
        currencyRates[1].setRate(1.0);
        currencyRates[1].setCurrencyCode("UAH");
        currencyService.setServiceURL("http://test.com.ua");
        when(restTemplate.getForObject(Mockito.anyString(),ArgumentMatchers.any(Class.class))).thenReturn(currencyRates);
        currencyService.refreshCurrencyCache();

        double price = currencyService.getPriceByCurrency(Currency.fromValue("USD"),90.0);
        assertEquals(3.0,price, 0);
        price = currencyService.getPriceByCurrency(Currency.fromValue("UAH"),10.2);
        assertEquals(10.2,price, 0);
        verify(restTemplate, times(1)).getForObject(Mockito.anyString(),ArgumentMatchers.any(Class.class));
        verifyNoMoreInteractions(restTemplate);
    }

    @Test(expected = AppException.class)
    public void getPriceByWrongCurrency() {
        CurrencyRates[] currencyRates = new CurrencyRates[2];
        currencyRates[0] = new CurrencyRates();
        currencyRates[0].setId(1);
        currencyRates[0].setCurrencyName("Dollars");
        currencyRates[0].setRate(30.0);
        currencyRates[0].setCurrencyCode("USD");
        currencyRates[1] = new CurrencyRates();
        currencyRates[1].setId(2);
        currencyRates[1].setCurrencyName("PPP");
        currencyRates[1].setRate(1.0);
        currencyRates[1].setCurrencyCode("JPY");
        currencyService.setServiceURL("http://test.com.ua");
        when(restTemplate.getForObject(Mockito.anyString(),ArgumentMatchers.any(Class.class))).thenReturn(currencyRates);
        currencyService.refreshCurrencyCache();
        double price = currencyService.getPriceByCurrency(Currency.fromValue("JPY"),10.2);
    }
}