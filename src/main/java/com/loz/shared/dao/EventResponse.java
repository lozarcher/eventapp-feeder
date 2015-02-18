package com.loz.shared.dao;

import com.loz.facebook.service.dao.feed.Events;
import com.loz.facebook.service.dao.model.EventData;

import java.util.Date;

/**
 * Created by loz on 14/02/15.
 */
public class EventResponse {
    private Date date;
    private Iterable<EventData> data;

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Iterable<EventData> getData() {
        return data;
    }

    public void setData(Iterable<EventData> data) {
        this.data = data;
    }
}
