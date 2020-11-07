import 'package:flutter/material.dart';

class TextFieldComponent extends StatelessWidget {
  String title;
  TextInputType keyBoardType;
  IconData icon;
  var validator;
  bool obscure;
  bool enaple;
  var controllers;

  TextFieldComponent(
      {@required this.title,
      @required this.keyBoardType,
      @required this.icon,
      @required this.validator,
      @required this.controllers,
      this.obscure = false,
      this.enaple = true});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Color.fromRGBO(0, 86, 162, .2),
                blurRadius: 20.0,
                offset: Offset(0, 10))
          ]),
      child: TextFormField(
        enabled: enaple,
        obscureText: obscure,
        keyboardType: keyBoardType,
        validator: validator,
        controller: controllers,
        style: new TextStyle(
          fontFamily: "Poppins",
        ),
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          prefixIcon: Icon(icon),
          hintText: title,
          hintStyle: TextStyle(
            color: Colors.grey[500],
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
