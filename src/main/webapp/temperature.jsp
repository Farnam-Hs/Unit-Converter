<html>
<head>
    <title>Unit Converter - Length</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 400px;
            text-align: center;
        }
        h1 {
            color: #333;
            margin-bottom: 20px;
        }
        .tabs {
            display: flex;
            justify-content: space-between;
            margin-bottom: 20px;
        }
        .tab {
            padding: 10px 20px;
            background-color: #e0e0e0;
            cursor: pointer;
            flex-grow: 1;
            text-align: center;
            border-radius: 5px 5px 0 0;
            text-decoration: none;
            color: #000;
            margin: 0 5px;
        }
        .tab.active {
            background-color: #4CAF50;
            color: white;
        }
        label {
            display: block;
            margin: 10px 0 5px;
            color: #555;
        }
        input[type="text"], select {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
        }
        input[type="text"] {
            -moz-appearance: textfield;
        }
        input[type="text"]::-webkit-outer-spin-button,
        input[type="text"]::-webkit-inner-spin-button {
            -webkit-appearance: none;
            margin: 0;
        }
        button {
            background-color: #4CAF50;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            width: 100%;
        }
        button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Unit Converter</h1>
    <div class="tabs">
        <a href="length.jsp" class="tab">Length</a>
        <a href="weight.jsp" class="tab">Weight</a>
        <a href="temperature.jsp" class="tab active">Temperature</a>
    </div>

    <form action="result" method="post">
        <input type="hidden" name="type" value="temperature">

        <label for="value">Enter the temperature to convert:</label>
        <input type="text" name="value" id="value" required pattern="[+-]?\d+(\.\d{1,2})?" title="Please enter a valid number">

        <label for="fromUnit">Unit to Convert from:</label>
        <select name="fromUnit" id="fromUnit">
            <option value="celsius">Celsius</option>
            <option value="fahrenheit">Fahrenheit</option>
            <option value="kelvin">Kelvin</option>
        </select>

        <label for="toUnit">Unit to Convert to:</label>
        <select name="toUnit" id="toUnit">
            <option value="celsius">Celsius</option>
            <option value="fahrenheit">Fahrenheit</option>
            <option value="kelvin">Kelvin</option>
        </select>

        <button type="submit">Convert</button>
    </form>
</div>
</body>
</html>
