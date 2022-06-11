import 'dart:convert';

import "package:http/http.dart" as http;

class ApiCall {

  static final client = http.Client();

  Future<Map<String, String>> signupCall (body) async {
    const String url = "http://192.168.100.34:8000/api/user/signup";

    final response = await client.post(Uri.parse(url),
    body: json.encode(body));

    if ( response.statusCode == 201 ) {
      return {
        "code": "201",
        "response": response.body
      };
    }

    return {
      "code": response.statusCode.toString(),
      "response": response.body
    };

  }

}