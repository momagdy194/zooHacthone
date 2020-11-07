import 'package:flutter/material.dart';
import 'package:next_one/main.dart';
import 'package:get/get.dart';
import 'package:next_one/presentation/page/scaner.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        title: Text("search voluntary even"),
        leading: IconButton(icon: Icon(Icons.search), onPressed: () {}),
      ),
      body: ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) => Card(
                child: ListTile(
                  onTap: () => Get.to(MyApp()),
                  trailing: Icon(Icons.arrow_forward_ios),
                  title: Text("Plastic collection"),
                  subtitle: Text(
                      "lorem media ver and jer to vector cerises ter many of colsonor "),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/Images/logo.png"),
                  ),
                ),
              )),
    );
  }
}
