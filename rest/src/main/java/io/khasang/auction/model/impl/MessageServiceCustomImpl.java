package io.khasang.auction.model.impl;

import io.khasang.auction.model.MessageService;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;

@Service
@Qualifier("messageServiceCustom")
@Lazy
public class MessageServiceCustomImpl implements MessageService {
    @Override
    public String getMessage() {
        return "custom";
    }
}
