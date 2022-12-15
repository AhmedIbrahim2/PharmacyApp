import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:imagetotext/Veiw/alarms.dart';

class AllPrescription extends StatelessWidget {
  String value = '';

  @override
  AllPrescription(this.value, {super.key});

  AllPrescription.fromname();

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
            SingleChildScrollView(
              child: Container(
                child: Text(
                  "",
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              padding: EdgeInsets.all(10),
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.black)),
              child: SingleChildScrollView(
                child: Center(
                  child: Text(
                    value,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
