import 'package:flutter/material.dart';
import 'package:next_one/main.dart';

class DailyGoal extends StatefulWidget {
  @override
  _DailyGoalState createState() => _DailyGoalState();
}

class _DailyGoalState extends State<DailyGoal> {
  Map<String, bool> List = {
    'attern voluntary even': false,
    'voluntary even': false,
    'atternvoluntary even': false,
    'voluntary even1': false,
    'voluntary even2': false,
    'recicle bottel3': false,
    'voluntary even4': false,

  };
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("yor Daily goals"),),
      body: Column (children: <Widget>[

        Expanded(
          child :
          ListView(
            children: List.keys.map((String key) {
              return new CheckboxListTile(
                title: new Text(key),
                value: List[key],
                onChanged: (bool value) {
                  setState(() {
                    List[key] = value;
                  });
                },
              );
            }).toList(),
          ),
        ),]),
    );
  }
}


