// ignore_for_file: prefer_const_constructors

import 'dart:io';

import 'package:firebase_ml_vision/firebase_ml_vision.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_picker/image_picker.dart';
import 'package:imagetotext/alarm.dart';

class prescription extends StatefulWidget {
  const prescription({super.key});

  @override
  State<prescription> createState() => _prescriptionState();
}

class _prescriptionState extends State<prescription> {
  String result = '';
  File? image;
  File? image1;
  final imagepicker = new ImagePicker();

  uploadimage() async {
    var pickedimage = await imagepicker.pickImage(source: ImageSource.camera);
    setState(() {
      if (pickedimage != null) {
        image = File(pickedimage.path);
        performImageLabeling();
      } else {}
    });
  }

  uploadimagefromgallary() async {
    var pickedimage = await imagepicker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (pickedimage != null) {
        image = File(pickedimage.path);
        performImageLabeling();
      } else {}
    });
  }

  performImageLabeling() async {
    final FirebaseVisionImage firebasevisionimage =
        FirebaseVisionImage.fromFile(image);
    final TextRecognizer recognizer = FirebaseVision.instance.textRecognizer();
    VisionText visiontext = await recognizer.processImage(firebasevisionimage);

    result = '';
    setState(() {
      for (TextBlock block in visiontext.blocks) {
        final String txt = block.text;
        for (TextLine line in block.lines) {
          for (TextElement element in line.elements) {
            // ignore: prefer_interpolation_to_compose_strings
            result += element.text + " ";
          }
        }
        result += "\n\n";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // ignore: prefer_const_constructors
        decoration: BoxDecoration(
            image: const DecorationImage(
          image: AssetImage('asset/back.jpg'),
          fit: BoxFit.cover,
        )),
        child: Column(
          children: [
            SizedBox(
              width: 100,
            ),
            Container(
              height: 280,
              width: 250,
              margin: EdgeInsets.only(top: 70),
              padding: EdgeInsets.only(left: 28, bottom: 5, right: 18),
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(12),
                  child: Text(
                    result,
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('asset/note.jpg'), fit: BoxFit.cover)),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, right: 140),
              child: Stack(
                children: [
                  Stack(
                    children: [
                      Center(
                        child: Image.asset(
                          'asset/pin.png',
                          height: 240,
                          width: 240,
                        ),
                      )
                    ],
                  ),
                  Center(
                    child: TextButton(
                        onPressed: uploadimage,
                        onLongPress: uploadimagefromgallary,
                        child: Container(
                            margin: EdgeInsets.only(top: 25),
                            child: ColorFiltered(
                                colorFilter: ColorFilter.mode(
                                  Colors.black87,
                                  BlendMode.hue,
                                ),
                                child: image != null
                                    ? Image.file(
                                        image!,
                                        width: 140,
                                        height: 192,
                                        fit: BoxFit.fill,
                                      )
                                    : Container(
                                        width: 240,
                                        height: 200,
                                        child: Icon(
                                          Icons.camera,
                                          size: 100,
                                          color: Colors.grey,
                                        ),
                                      )))),
                  ),
                ],
              ),
            ),
            ElevatedButton.icon(
                onPressed: (() => Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return alarm(result);
                    }))),
                icon: Icon(Icons.alarm),
                label: Text("Alarm"))
          ],
        ),
      ),
    );
  }
}
