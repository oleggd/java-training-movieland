package com.movieland.controller.util;

import com.movieland.entity.Currency;

import java.beans.PropertyEditorSupport;

public class CurrencyConverter extends PropertyEditorSupport {

    @Override
    public void setAsText(final String text)  {
        setValue(Currency.fromValue(text));
    }
}
