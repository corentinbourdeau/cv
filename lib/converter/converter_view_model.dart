import 'package:flutter/material.dart';

class ConverterViewModel extends ChangeNotifier {
  final TextEditingController meter = TextEditingController();
  final TextEditingController secondes = TextEditingController();
  double result = 0.0; // Speed in km/h

  ConverterViewModel() {
    // Listen to changes in both controllers
    meter.addListener(_updateResult);
    secondes.addListener(_updateResult);
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

  @override
  void dispose() {
    meter.dispose();
    secondes.dispose();
    super.dispose();
  }
}
