package com.demis.imarket.service.UUID;

import java.util.UUID;

public class UUIDGenerator {
    public static String generateUniqueID() {
        return UUID.randomUUID().toString();
    }
}
