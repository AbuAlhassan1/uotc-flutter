import "package:flutter/material.dart";
import '../../controllers/signupcontroller.dart';
import 'package:get/get.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'signformfield.dart';


class SignUpForm extends StatefulWidget {

  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final Signupcontroller signController = Get.put(Signupcontroller());

  final formKey = GlobalKey<FormState>();

  final TextEditingController email = TextEditingController();
  
  final TextEditingController username = TextEditingController();

  final TextEditingController password = TextEditingController();

  final TextEditingController conforemPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: (){
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        appBar: width > 600 ? AppBar() : null,
        body: SafeArea(
          child: Stack(
            children: [
              Center(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 0.07 * height,),
                      Form(
                        child: Column(
                          children: [
                            SignField(username, "Username", Icons.email_outlined),
                            SignField(email, "Email", Icons.email_outlined),
                            SignField(password, "Password", Icons.password),
                            SignField(conforemPassword, "Conform Password", Icons.password),

                            // Signup Button -- Start --
                            Container(
                              height: 50,
                              width: double.infinity,
                              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.blue
                              ),
                              child: TextButton(
                                onPressed: () async {
                                  if ( password.text == conforemPassword.text ) {
                                    await signController.signup(email.text, password.text, username.text);
                                  }
                                  Fluttertoast.showToast(
                                    msg: signController.message.value,
                                    backgroundColor: signController.statusCode == "201" ? Colors.green : Colors.red,
                                  );
                                  print(signController.statusCode);
                                },
                                child: Obx(
                                  (){
                                    return signController.loading.value? const CircularProgressIndicator(color: Colors.white,) : const Text(
                                    "Sign Up",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  );
                                  }
                                ),
                              ),
                            ),
                            // Signup Button -- End --
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Back Button -- Start --
              Positioned(
                child: Container(
                  color: Colors.transparent,
                  height: 0.07 * height,
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: (){ Navigator.pop(context); },
                        icon: const Icon(
                          Icons.arrow_back_ios_new,
                          color: Color.fromARGB(255, 30, 90, 255),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Back Button -- End --
            ],
          ),
        ),
      ),
    );
  }
}
