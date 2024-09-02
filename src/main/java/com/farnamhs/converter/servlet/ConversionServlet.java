package com.farnamhs.converter.servlet;

import java.io.*;

import com.farnamhs.converter.service.ConversionService;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet("/result")
public class ConversionServlet extends HttpServlet {

    private final ConversionService conversionService;

    public ConversionServlet() {
        this.conversionService = new ConversionService();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String type = request.getParameter("type");
        String fromUnit = request.getParameter("fromUnit");
        String toUnit = request.getParameter("toUnit");
        double value = Double.parseDouble(request.getParameter("value"));

        double resultValue = conversionService.convert(type, fromUnit, toUnit, value);

        request.setAttribute("resultValue", resultValue);
        request.setAttribute("fromUnit", fromUnit);
        request.setAttribute("toUnit", toUnit);
        request.setAttribute("originalValue", value);

        request.getRequestDispatcher("result.jsp").forward(request, response);
    }
}