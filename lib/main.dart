import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:image_picker/image_picker.dart';
import 'package:next_one/presentation/page/dayley_goals.dart';
import 'package:next_one/presentation/page/home_page/home.dart';
import 'package:next_one/presentation/page/scaner.dart';
import 'package:next_one/presentation/page/user_profiel.dart';

import 'presentation/page/auth/login.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
          primaryColor: Colors.orangeAccent, accentColor: Colors.orangeAccent),
      home: LoginPage(),
    );
  }
}
