package com.demis.imarket.config.exception;

import java.time.LocalDateTime;

public class RecordNotFoundException extends RuntimeException {
    public RecordNotFoundException() {
        super("at %tF record not found exception occurred !".formatted(LocalDateTime.now()));
    }
}
