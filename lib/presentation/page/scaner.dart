import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:next_one/presentation/char_page.dart';
import 'package:next_one/presentation/page/user_profiel.dart';
import 'package:qrscan/qrscan.dart' as scanner;
import 'package:qr_flutter/qr_flutter.dart';
import 'package:get/get.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Uint8List bytes = Uint8List(0);
  TextEditingController _outputController;

  @override
  initState() {
    super.initState();
    this._outputController = new TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Search Product"),
        ),
        backgroundColor: Colors.grey[300],
        body: Builder(
          builder: (BuildContext context) {
            return ListView(
              children: <Widget>[
                Container(
                  color: Colors.white,
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 100,
                                child: QrImage(
                                  data: "1234567890",
                                  version: QrVersions.auto,
                                  size: 200.0,
                                ),
                              ),
                              Text(
                                "325.19",
                                style: TextStyle(fontSize: 18),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star),
                          Icon(Icons.star_half_sharp),
                        ],
                      ),
                      SizedBox(height: 20),
                      TextField(
                        controller: this._outputController,
                        maxLines: 2,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.description_outlined),
                          hintText: 'Product X',
                          hintStyle: TextStyle(fontSize: 18),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          FlatButton(
                            color: Colors.blueGrey,
                              onPressed: () => Get.to(ChatPage()),
                              child: Text("call guid")),
                          RaisedButton(
                            color: Colors.orangeAccent,
                            child: Text("Scan"),
                            onPressed: () => showBottomSheet(
                                context: context,
                                builder: (context) => _buttonGroup()),
                          ),
                          RaisedButton(
                            color: Colors.blueGrey,
                            child: Text("User profile"),
                            onPressed: () => Get.to(UserProfilePage())
                          ),

                        ],
                      ),
                      SizedBox(height: 70),
                      Text(
                        "Alternative",
                        style: TextStyle(fontSize: 20),
                      ),
                      Card(
                        color: Colors.orangeAccent,
                        child: ListTile(

                          leading: Icon(Icons.markunread_mailbox_sharp),
                          title: Text("First Product"),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      Card(
                        color: Colors.orangeAccent,
                        child: ListTile(

                          leading: Icon(Icons.markunread_mailbox_sharp),
                          title: Text("First Product"),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      Card(
                        color: Colors.orangeAccent,
                        child: ListTile(
                          leading: Icon(Icons.markunread_mailbox_sharp),
                          title: Text("First Product"),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),
                      Card(
                        color: Colors.orangeAccent,
                        child: ListTile(

                          leading: Icon(Icons.markunread_mailbox_sharp),
                          title: Text("First Product"),
                          trailing: Icon(Icons.arrow_forward_ios),
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            );
          },
        ));
  }




  Widget _buttonGroup() {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: SizedBox(
            height: 120,
            child: InkWell(
              onTap: _scan,
              child: Card(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Icon(
                        Icons.camera,
                        size: 50,
                      ),
                    ),
                    Divider(height: 20),
                    Expanded(flex: 1, child: Text("Scan Camera")),
                  ],
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: SizedBox(
            height: 120,
            child: InkWell(
              onTap: _scanPhoto,
              child: Card(
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Icon(
                        Icons.image_outlined,
                        size: 50,
                      ),
                    ),
                    Divider(height: 20),
                    Expanded(flex: 1, child: Text("Scan Photo")),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }



//TODO: thats save the coad frome the camera y taher

  Future _scan() async {
    String barcode = await scanner.scan();
    if (barcode == null) {
      print('nothing return.');
    } else {
      this._outputController.text = barcode;
    }
  }




//TODO: thats save the coad frome the photo y taher

  Future _scanPhoto() async {
    String barcode = await scanner.scanPhoto();
    this._outputController.text = barcode;
  }
}
