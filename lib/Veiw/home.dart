// ignore_for_file: prefer_const_constructors, unnecessary_import, implementation_imports

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:imagetotext/Veiw/notifications.dart';
import 'package:imagetotext/Veiw/alarm.dart';
import 'package:imagetotext/Veiw/precesions-1.dart';
import 'package:imagetotext/Veiw/scan_prescription.dart';

import 'login1/login1.dart';

class Home extends StatelessWidget {
  Home();

  String value = '';
  Home.fromname(this.value);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => notification()));
            },
            icon: Icon(Icons.notifications),
          ),
          IconButton(
            onPressed: () {
              logout(context);
            },
            icon: Icon(
              Icons.logout,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
            height: size.height,
            width: size.width,
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.menu,
                      color: Color.fromRGBO(55, 82, 178, 1),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: 80,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          image: DecorationImage(
                              image: AssetImage(
                                "asset/catt.webp",
                              ),
                              fit: BoxFit.cover)),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: size.height / 40,
              ),
              Text(
                "Hello " + value,
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                height: size.height / 40,
              ),
              ElevatedButton.icon(
                  onPressed: (() => Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return prescription();
                      }))),
                  icon: Icon(Icons.document_scanner_rounded),
                  label: Text("Read Prescription")),
              SizedBox(
                height: size.height / 30,
              ),
              ElevatedButton.icon(
                  onPressed: (() => Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return alarm.fromname();
                      }))),
                  icon: Icon(Icons.alarm),
                  label: Text("Alarm")),
              SizedBox(
                height: size.height / 30,
              ),
              ElevatedButton.icon(
                  onPressed: (() => Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return AllPrescription.fromname();
                      }))),
                  icon: Icon(Icons.medical_information),
                  label: Text("Prescriptions"))
            ])),
      ),
    );
  }
}

Future<void> logout(BuildContext context) async {
  CircularProgressIndicator();
  await FirebaseAuth.instance.signOut();
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) => LoginPage(),
    ),
  );
}
