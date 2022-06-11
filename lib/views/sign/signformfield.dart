import "package:flutter/material.dart";

class SignField extends StatelessWidget {
  final TextEditingController controller;
  final inputName;
  IconData icon;
  SignField(this.controller, this.inputName, this.icon, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Container(
      height: 50,
      margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(
          color: Colors.grey
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: TextFormField(
        obscureText: inputName == "Password" ? true : inputName == "Conform Password" ? true : false ,
        style: const TextStyle(
          color: Colors.black
        ),
        controller: controller,
        cursorColor: Colors.blue,
        decoration: InputDecoration(
          border: InputBorder.none,
          label: Text(inputName),
          labelStyle: const TextStyle(
            color: Colors.grey
          ),
        ),
      ),
    );
  }
}
