package com.movieland.controller.util;

import com.movieland.dao.util.SortDirection;

import java.beans.PropertyEditorSupport;

public class SortDirectionConverter extends PropertyEditorSupport {

    @Override
    public void setAsText(final String text) throws IllegalArgumentException {
        setValue(SortDirection.fromValue(text));
    }
}
