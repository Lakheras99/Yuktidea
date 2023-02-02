import 'dart:async';
import 'package:dio/dio.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import 'package:http/http.dart' as http;

class TokenInterceptor extends Interceptor {
  final Function refreshToken;

  TokenInterceptor(this.refreshToken);

  @override
  Future<Response> onRequest(RequestOptions options) async {
    var response = await super.onRequest(options);

    // Check if the response has a status code of 401, which usually indicates an unauthorized request
    if (response.statusCode == 401) {
      // Refresh the token using the `refreshToken` function
      var newToken = await refreshToken();

      // Update the request header with the new token
      options.headers['Authorization'] = 'Bearer $newToken';

      // Resend the request with the updated header
      response = await super.onRequest(options);
    }

    // Return the final response
    return response;
  }
}
