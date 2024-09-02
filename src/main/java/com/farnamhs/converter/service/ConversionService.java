package com.farnamhs.converter.service;

import com.farnamhs.converter.model.Length;
import com.farnamhs.converter.model.Temperature;
import com.farnamhs.converter.model.Weight;

public class ConversionService {

    public double convert(String type, String fromUnit, String toUnit, double value) {
        if (type.equalsIgnoreCase("length"))
            return new Length(fromUnit, value).getValue(toUnit);

        if (type.equalsIgnoreCase("weight"))
            return new Weight(fromUnit, value).getValue(toUnit);

        if (type.equalsIgnoreCase("temperature"))
            return new Temperature(fromUnit, value).getValue(toUnit);

        return 0.0;
    }
}
