import 'package:flutter/material.dart';

class UserProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          title: Text("User Profiel"),
        ),
        body: UserProfileWidget(
          height: height,
          width: width,
          address: "zagazig",
          email: "momagdy194@gmail.com",
          facilityName: "computer and information science",
          mobile: "01060994711",
          name: "momagdy",
        ));
  }
}

class UserProfileWidget extends StatelessWidget {
  final width, height, name, mobile, email, facilityName, address;

  UserProfileWidget(
      {this.width,
      this.height,
      this.name,
      this.mobile,
      this.email,
      this.facilityName,
      this.address});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 1,
      itemBuilder: (context, index) => Column(
        children: [
          Container(
              width: width,
              height: height / 4,
              decoration: BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                    image: AssetImage("assets/Images/userImage.png")),
              )),
          SizedBox(
            height: 30,
          ),
          Text(
            "$name",
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(
            height: 15,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Text("User Information", style: TextStyle(fontSize: 18)),
          ),
          SizedBox(
            height: 10,
          ),
          UserCardDetails(Icons.my_location, address, "address"),
          UserCardDetails(Icons.phone_android, mobile, "phone"),
          UserCardDetails(Icons.email, email, "Email"),
        ],
      ),
    );
  }
}

class UserCardDetails extends StatelessWidget {
  final title, icon, subtitle;

  UserCardDetails(this.icon, this.title, this.subtitle);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        subtitle: Text("$title", style: TextStyle(fontSize: 18)),
        title: Text("$subtitle", style: TextStyle(fontSize: 18)),
        leading: Icon(
          icon,
        ),
      ),
    );
  }
}
