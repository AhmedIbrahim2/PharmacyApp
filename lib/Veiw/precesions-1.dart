import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:imagetotext/Veiw/alarms.dart';

class AllPrescription extends StatelessWidget {
  const AllPrescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Precesions Page"),
        ),
        body: Column(
          children: <Widget>[
            Card(
              color: Colors.amberAccent,
              elevation: 5,
              child: SizedBox(
                height: 90,
                width: double.infinity,
                child: InkWell(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Container(
                          width: 50,
                          height: double.infinity,
                          color: Colors.green,
                          margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                        ),
                        Column(
                          children: [
                            Text(
                              "precision 1",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              DateTime.now().toString(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => AllAlarms()));
                  },
                ),
              ),
            ),
            Card(
              color: Colors.amberAccent,
              elevation: 5,
              child: SizedBox(
                height: 90,
                width: double.infinity,
                child: InkWell(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Container(
                          width: 50,
                          height: double.infinity,
                          color: Colors.green,
                          margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                        ),
                        Column(
                          children: [
                            Text(
                              "precision 2",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              DateTime.now().toString(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => AllAlarms()));
                  },
                ),
              ),
            ),
            Card(
              color: Colors.amberAccent,
              elevation: 5,
              child: SizedBox(
                height: 90,
                width: double.infinity,
                child: InkWell(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Container(
                          width: 50,
                          height: double.infinity,
                          color: Colors.green,
                          margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                        ),
                        Column(
                          children: [
                            Text(
                              "precision 3",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              DateTime.now().toString(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => AllAlarms()));
                  },
                ),
              ),
            ),
            Card(
              color: Colors.amberAccent,
              elevation: 5,
              child: SizedBox(
                height: 90,
                width: double.infinity,
                child: InkWell(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Row(
                      children: [
                        Container(
                          width: 50,
                          height: double.infinity,
                          color: Colors.green,
                          margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                        ),
                        Column(
                          children: [
                            Text(
                              "precision 4",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              DateTime.now().toString(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => AllAlarms()));
                  },
                ),
              ),
            ),
          ],
        ));
  }
}
