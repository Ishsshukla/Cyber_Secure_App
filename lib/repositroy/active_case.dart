import 'package:cyber_secure/main.dart';
import 'package:flutter/material.dart';

import 'package:cyber_secure/modules/categories_fraud_trends.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:cyber_secure/modules/active_case_model.dart';
// class ActiveCaseRepository {
//   final http.Client client;

//   ActiveCaseRepository({required this.client});

//   Future<List<activeCaseModel>> getActiveCases() async {
//     final request = http.MultipartRequest('GET', Uri.parse('https://cybersecure.onrender.com/v1/getCases'));

//     try {
//       final response = await request.send();
//       if (response.statusCode == 200) {
//         final data = await response.stream.bytesToString();
//         final decodedData = jsonDecode(data);
//         if (decodedData['complaints'] != null) {
//           final complaints = decodedData['complaints'] as List;
//           return complaints.map((complaint) => activeCaseModel.fromJson(complaint)).toList();
//         } else {
//           throw Exception('No complaints found in response');
//         }
//       } else {
//         throw Exception('Failed to fetch active cases: ${response.reasonPhrase}');
//       }
//     } on Exception catch (e) {
//       print('Error fetching active cases: $e');
//       rethrow; // Rethrow to allow handling in the caller
//     }
//   }
// }

import 'dart:convert';

import 'package:http/http.dart' as http;

// class ActiveCaseRepository {
//   final http.Client client;

//   ActiveCaseRepository({required this.client});

//   Future<List<activeCaseModel>> getActiveCases() async {
//     final request = http.MultipartRequest(
//       'GET',
//       Uri.parse('https://cybersecure.onrender.com/v1/getCases'),
//     );

//     request.headers['Authorization'] = 'Bearer ${PreferencesManager().token}';

//     try {
//       final response = await request.send();
//       if (response.statusCode == 200) {
//         final data = await response.stream.bytesToString();
//         final decodedData = jsonDecode(data);

//         // Handle potential API response structure variations
//         if (decodedData is List) {
//           // API response is a list of complaints
//           return decodedData.map((complaint) => activeCaseModel.fromJson(complaint)).toList();
//         } else if (decodedData is Map && decodedData['complaints'] != null) {
//           // API response is a single map with a "complaints" list
//           final complaints = decodedData['complaints'] as List;
//           return complaints.map((complaint) => activeCaseModel.fromJson(complaint)).toList();
//         } else {
//           throw Exception('Unexpected API response format');
//         }
//       } else {
//         throw Exception('Failed to fetch active cases: ${response.reasonPhrase}');
//       }
//     } on Exception catch (e) {
//       print('Error fetching active cases: $e');
//       rethrow; // Re-throw for handling in the caller
//     }
//   }
// }

import 'dart:convert';

import 'package:http/http.dart' as http;

class ActiveCaseRepository {
  final http.Client client;

  ActiveCaseRepository({
    required this.client,
  });

  Future<List<activeCaseModel>> getActiveCases() async {
    final request = http.MultipartRequest(
      'GET',
      Uri.parse('https://cybersecure.onrender.com/v1/getCases'),
    );

    request.headers['Authorization'] = 'Bearer ${PreferencesManager().token}';

    try {
      final response = await request.send();
      if (response.statusCode == 200) {
        final data = await response.stream.bytesToString();
        final decodedData = jsonDecode(data);

        // Enhanced handling for potential response variations
        if (decodedData is List) {
          // API response is a list of complaints (preferred format)
          return decodedData
              .map((complaint) => activeCaseModel.fromJson(complaint))
              .toList();
        } else if (decodedData is Map) {
          final complaints =
              decodedData['complaints'] as List?; // Use a nullable type

          if (complaints != null) {
            return complaints
                .map((complaint) => activeCaseModel.fromJson(complaint))
                .toList();
          } else {
            // Handle the case where "complaints" is missing
            throw Exception('API response is missing the "complaints" key');
          }
        } else {
          throw Exception('Unexpected API response format');
        }
      } else {
        throw Exception(
            'Failed to fetch active cases: ${response.reasonPhrase}');
      }
    } on Exception catch (e) {
      print('Error fetching active cases: $e');
      rethrow; // Re-throw for handling in the caller
    }
  }
}
