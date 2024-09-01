import 'package:flutter/material.dart';

class ConverterViewModel extends ChangeNotifier {
  final TextEditingController meter = TextEditingController();
  final TextEditingController secondes = TextEditingController();
  final TextEditingController minutes = TextEditingController();
  final TextEditingController hours = TextEditingController();
  final TextEditingController speed = TextEditingController();
  double result = 0.0; // Speed in km/h
  double resultPace = 0.0; // Speed in km/h
  String resultSpeed = "0'00";

  ConverterViewModel() {
    // Listen to changes in both controllers
    meter.addListener(_updateResult);
    secondes.addListener(_updateResult);

    minutes.addListener(_updateResultPace);
    secondes.addListener(_updateResultPace);

    speed.addListener(_updateResultSpeed);
  }

  void _updateResultPace() {
    // Try to parse input values as double
    final double minutesValue = double.tryParse(minutes.text) ?? 0.0;
    final double secondesValue = double.tryParse(secondes.text) ?? 0.0;

    final double time = minutesValue / 60 + secondesValue / 3600;
    // Avoid division by zero
    if (time > 0) {
      resultPace = 1 / time; // Convert m/s to km/h
    } else {
      resultPace = 0.0; // Default result when time is zero or invalid
    }

    notifyListeners(); // Notify listeners to update the UI
  }

  void _updateResult() {
    // Try to parse input values as double
    final double distance = double.tryParse(meter.text) ?? 0.0;
    final double time = double.tryParse(secondes.text) ?? 0.0;

    // Avoid division by zero
    if (time > 0) {
      result = (distance / time) * 3.6; // Convert m/s to km/h
    } else {
      result = 0.0; // Default result when time is zero or invalid
    }

    notifyListeners(); // Notify listeners to update the UI
  }

  void _updateResultSpeed() {
  // Try to parse input value as double
  final double speedValue = double.tryParse(speed.text) ?? 0.0;

  // Avoid division by zero
  if (speedValue > 0) {
    // Calculate the pace in minutes per kilometer
    double allure = 60 / speedValue;

    // Get the integer part (minutes) and fractional part (seconds)
    int minutes = allure.toInt();
    int seconds = ((allure - minutes) * 60).round(); // Convert the fractional part to seconds

    // Format the result as "m:ss"
    resultSpeed = "$minutes'${seconds.toString().padLeft(2, '0')}";
  } else {
    resultSpeed = "N/A"; // Handle the case where speedValue is zero or invalid
  }

  notifyListeners(); // Notify listeners to update the UI
}

  @override
  void dispose() {
    meter.dispose();
    secondes.dispose();
    minutes.dispose();
    speed.dispose();
    super.dispose();
  }
}
