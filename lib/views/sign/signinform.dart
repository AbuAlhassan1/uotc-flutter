import "package:flutter/material.dart";
import 'signformfield.dart';

class SignInForm extends StatefulWidget {

  const SignInForm({Key? key}) : super(key: key);

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final formKey = GlobalKey<FormState>();

  final TextEditingController email = TextEditingController();

  final TextEditingController username = TextEditingController();

  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  color: Colors.blue,
                  height: 500,
                  width: double.infinity,
                ),
                Container(
                  color: Colors.amber,
                  height: 500,
                  width: double.infinity,
                ),
                Container(
                  color: Colors.lightGreenAccent,
                  height: 500,
                  width: double.infinity,
                ),
              ],
            ),
          ),
          Positioned(
            child: Container(
              color: Colors.transparent,
              height: 100,
              width: double.infinity,
              child: Row(children: [ IconButton( onPressed: (){ Navigator.pop(context); }, icon: const Icon(Icons.arrow_back_ios, color: Colors.white,) ) ],),
            ),
          ),
        ],
      ),
    );
  }
}
