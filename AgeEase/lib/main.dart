import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:medical_app/Reminder.dart';
import 'package:medical_app/components/CategoryCard.dart';
import 'package:medical_app/constants.dart';
// import 'package:document_scanner/document_scanner.dart';
// import 'package:permission_handler/permission_handler.dart';
// import 'package:edge_detection/edge_detection.dart';
import 'package:document_scanner_flutter/document_scanner_flutter.dart';
import 'package:flutter/services.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'SOS.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AgeEase',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Raleway',
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      appBar: AppBar(
        backgroundColor: kPrimary,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Transform.rotate(
            angle: pi / 2,
            // child: Icon(
            //   Feather.bar_chart_2,
            //   color: kTextPrimary,
            //   size: 30,
            // ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Feather.search,
              color: kTextPrimary,
              size: 20,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              'Your Virtual CareGiver',
              style: TextStyle(
                color: kTextPrimary,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'WE MAKE IT EASY FOR YOU',
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 15,
              ),
            ),
            SizedBox(height: 40),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: TextButton(
                onPressed: () async {
                  try {
                    File scannedDoc =
                        await DocumentScannerFlutter.launch(context);
                    print(scannedDoc);
                    // `scannedDoc` will be the image file scanned from scanner
                  } on PlatformException {
                    // 'Failed to get document path or operation cancelled!';
                  }
                },
                style: ButtonStyle(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Feather.camera,
                      color: kTextPrimary,
                      size: 25,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Upload your prescription',
                      style: TextStyle(
                        color: kTextPrimary,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Categories',
                  style: TextStyle(
                    color: kTextPrimary,
                    fontSize: 20,
                  ),
                ),
                // Text(
                //   'View all',
                //   style: TextStyle(
                //     color: kTextSecondary,
                //     fontSize: 15,
                //     fontWeight: FontWeight.bold,
                //     decoration: TextDecoration.underline,
                //   ),
                // ),
              ],
            ),

            SizedBox(height: 15),

            Container(

              height: 135,
              child: ClipRRect(
                child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,

                children: [
                  InkWell(

                    child: Container(
                      child: CategoryCard(


                        title: 'SOS',
                        icon: Feather.phone_call,

                      ),
                    ),
                    onTap: () => select(context, 0),
                  ),
                  // CategoryCard(
                  //   title: 'FirstAid',
                  //   icon: MaterialCommunityIcons.medical_bag,
                  // ),
                  CategoryCard(
                    title: 'Medicines',
                    icon: MaterialCommunityIcons.pill,
                  ),
                ],
              ),
            ),
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kSecondary,
        splashColor: kPrimary,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Reminder(),
            ),
          );
        },
        child: Icon(
          Icons.alarm_add,
          color: kTextPrimary,
          size: 50,
        ),
      ),
    );
  }
  void select(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => phone()
        ));
        break;
/*
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => games()
        ));
        break;
    }

 */
    }

}}
