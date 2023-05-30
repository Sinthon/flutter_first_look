import 'dart:convert';

import 'package:flutter_first_look/models/dtos/api_response.dart';
import 'package:flutter_first_look/models/user.dart';
import 'package:http/http.dart' as http;

import '../constant.dart';

Future<ApiResponse> createUser(String email, String password) async {
  ApiResponse apiResponse = ApiResponse();
  try {
    final response = await http.post(Uri.parse('${baseUrl}api/login'),
        headers: {'Accept': 'application/json'},
        body: {'email': email, 'password': password});

    if (response.statusCode == 200) {
      apiResponse.data = User.fromJson(jsonDecode(response.body));
    } else if (response.statusCode == 422) {
      // final errors = jsonDecode(response.body)['errors'];
      apiResponse.error = somethingWentWrong;
    }
  } catch (e) {
    apiResponse.error = somethingWentWrong;
  }

  return apiResponse;
}
