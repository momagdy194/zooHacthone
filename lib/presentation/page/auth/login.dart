import 'package:flutter/material.dart';
import 'package:next_one/presentation/page/home_page/home.dart';
import 'package:next_one/presentation/utill/text_form_decoration.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 18),
        children: [
          Image(image: AssetImage("assets/Images/logo.png")),
          TextFieldComponent(
              title: "email",
              keyBoardType: TextInputType.emailAddress,
              icon: Icons.email,
              validator: null,
              controllers: null),
          TextFieldComponent(
              title: "password",
              keyBoardType: TextInputType.visiblePassword,
              icon: Icons.lock,
              validator: null,
              controllers: null),
          FlatButton(
              child: Text("Login"),
              color: Colors.orangeAccent,
              onPressed: () {
                Get.to(HomePage());
              }),
          FlatButton(
              child: Text("Register"),
              onPressed: () {
               return Get.to(HomePage());
              })
        ],
      ),
    );
  }
}
