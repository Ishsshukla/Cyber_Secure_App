import 'package:flutter/material.dart';

import 'package:cyber_secure/modules/categories_fraud_trends.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiManager {
  static const String apiUrl =
      'https://cyber-secure.onrender.com/v1/cyberCrimeCategories';

  Future<categorieFraudTrends?> fetchData(String category) async {
    try {
      final response = await http.get(
        Uri.parse('$apiUrl?category=$category'),
        headers: <String, String>{
          'Content-Type': 'application/json',
        },
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonData = jsonDecode(response.body);
        return categorieFraudTrends.fromJson(jsonData);
      } else {
        print('Failed to load data. Status Code: ${response.statusCode}');
        return null;
      }
    } catch (e) {
      print('Error during API call: $e');
      return null;
    }
  }
}