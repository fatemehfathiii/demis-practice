package com.demis.imarket.config.validations;

import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;

import java.util.regex.Pattern;

public class MobileNumberValidator implements ConstraintValidator<MobileNumber, String> {
    @Override
    public boolean isValid(String mobileNumber, ConstraintValidatorContext constraintValidatorContext) {
        return Pattern.matches("09\\d{9}[0_9]", mobileNumber);
    }
}
