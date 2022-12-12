import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class notification extends StatelessWidget {
  const notification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Notification Page")),
        body: Column(
          children: <Widget>[
            Card(
              elevation: 5,
              child: Container(
                width: double.infinity,
                height: 70,
                margin: EdgeInsets.all(10),
                child: Text(
                  "notification1",
                ),
              ),
            ),
            Card(
              elevation: 5,
              child: Container(
                width: double.infinity,
                height: 70,
                margin: EdgeInsets.all(10),
                child: Text(
                  "notification2",
                ),
              ),
            ),
            Card(
              elevation: 5,
              child: Container(
                width: double.infinity,
                height: 70,
                margin: EdgeInsets.all(10),
                child: Text(
                  "notification3",
                ),
              ),
            ),
            Card(
              elevation: 5,
              child: Container(
                width: double.infinity,
                height: 70,
                margin: EdgeInsets.all(10),
                child: Text(
                  "notification4",
                ),
              ),
            ),
          ],
        ));
  }
}
