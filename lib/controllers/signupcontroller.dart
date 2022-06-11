import 'dart:convert';

import 'package:get/get.dart';
import '../services/remote.dart';
import '../models/signup_model.dart';

class Signupcontroller extends GetxController {
  final message = "".obs;
  final statusCode = "0".obs;
  final loading = false.obs;


  Future<void> signup (String email, String password, String username) async {
    loading.value = true;
    final apiCall = ApiCall();
    final res = {
      "code": 500,
      "response" : "Connection Error"
    };
    try{
      final res = await apiCall.signupCall({
        "first_name": "",
        "last_name": "",
        "username": username,
        "email": email,
        "password": password
      }).timeout(const Duration(seconds: 3));
    }
    catch (e){
      print(e);
    }
    print("five");
    if ( res["code"] == "201" ) {
      message.value = res["response"].toString();
      statusCode.value = res["code"].toString();
      Signup signupObject = SignupFromJson(res["response"].toString());
    }

    try{
      message.value = json.decode(res["response"].toString())["message"].toString();
      statusCode.value = res["code"].toString();
    }
    catch(e){
      print(e);
      message.value = "Something Went Wrong Plz Try Again";
      statusCode.value = "0";
    }
    loading.value = false;
  }
}