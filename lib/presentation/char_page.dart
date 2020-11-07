import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("good buy guide"),),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/Images/userImage.png"),
                    ),
                    Card(
                      color: Colors.blueGrey,
                      child: Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 3, vertical: 10),
                          child: Text(
                            "Hey Ther How much thts Product",
                            textAlign: TextAlign.start,
                          )),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Card(
                      color: Colors.orangeAccent.shade100,
                      child: Container(
                          margin:
                              EdgeInsets.symmetric(horizontal: 3, vertical: 10),
                          child: Text(
                            "Hey Ther How much thts Product",
                            textAlign: TextAlign.start,
                          )),
                    ),
                    CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/Images/userImage.png"),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Flexible(
                    child: TextField(
                  decoration: InputDecoration(hintText: "report"),
                )),
                Icon(Icons.send)
              ],
            )
          ],
        ),
      ),
    );
  }
}
