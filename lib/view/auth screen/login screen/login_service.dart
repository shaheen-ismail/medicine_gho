import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:medicine_gho/model/auth_model.dart';

class AuthService {
  final Dio _dio = Dio();

  Future<AuthModel> login(String email, String password) async {
    try {
      final response = await _dio.post(
        'https://api.escuelajs.co/api/v1/auth/login',
        data: {
          'email': email,
          'password': password,
        },
      );

      if (response.statusCode == 201) {
        log(response.data.toString());
        return AuthModel.fromJson(response.data);
      } else {
        throw Exception('Failed to load data');
      }
    } catch (e) {
      rethrow;
    }
  }
}
