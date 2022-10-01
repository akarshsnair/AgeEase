import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class phone extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Color(0xFF256265),
    appBar: AppBar(
      title: Text('SOS'),
      backgroundColor: Color(0xFF256265),
    ),
    body: Column(

      children: [

        MyApp()

      ],
    ),
  );
}

class MyApp extends StatefulWidget {

  @override
  call createState() => call();

}

class call extends State<MyApp> {

  final TextEditingController _numberCtrl = TextEditingController();
  final TextEditingController _numberCtrl2 = TextEditingController();

  @override
  void initState() {
    super.initState();
    _numberCtrl.text = "8951621848";
    _numberCtrl2.text = "9600788188";

  }
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 20),
            Text(
              'Doctor',
              style: TextStyle(
                color: Color(0xFFCC9AA7),
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 15),
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(horizontal: 20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color(0xFF001526),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xFF073738),
                    blurRadius: 10,
                    offset: Offset(2, 3),
                  ),
                ],
              ),
              child: TextField(
                cursorWidth: 5,

                controller: _numberCtrl,
                style: TextStyle(
                  color: Colors.yellow,
                ),

                decoration: const InputDecoration(labelText: "Phone Number"),
              keyboardType: TextInputType.number,),
              ),


            // Padding(
            //   padding: const EdgeInsets.all(20),
            //
            //   child: TextField(
                // cursorWidth: 5,
                //
                // controller: _numberCtrl,
            //
            //     decoration: const InputDecoration(labelText: "Phone Number"),
            //     keyboardType: TextInputType.number,
            //   ),
            // ),
            ElevatedButton(


              child: const Text("Call"),

              onPressed: () async {
                FlutterPhoneDirectCaller.callNumber(_numberCtrl.text);
              },
            ),

            // Padding(
            //
            //   padding: const EdgeInsets.all(20),
            //
            //     child: TextField(
            //
            //     cursorColor: Colors.red,
            //     controller: _numberCtrl2,
            //     decoration: const InputDecoration(labelText: "Phone Number"),
            //     keyboardType: TextInputType.number,
            //   ),
            // ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
               SizedBox(height: 20),
                 Text(
                'Guardian',
     style: TextStyle(
         color: Color(0xFFCC9AA7),
        fontSize: 20,
          fontWeight: FontWeight.w500,
    ),
    ),
          SizedBox(height: 15),
             Container(
               height: 60,
                width: MediaQuery.of(context).size.width,
                 padding: EdgeInsets.symmetric(horizontal: 20),
                 alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color(0xFF001526),
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                BoxShadow(
                color: Color(0xFF073738),
                  blurRadius: 10,
                  offset: Offset(2, 3),
      ),
    ],
    ),
                    child: TextField(
                 cursorWidth: 5,

                controller: _numberCtrl,
                     style: TextStyle(
                color: Colors.yellow,
    ),

    decoration: const InputDecoration(labelText: "Phone Number"),
    keyboardType: TextInputType.number,),
    ),


    ElevatedButton(

              clipBehavior: Clip.antiAlias,
              child: const Text("Call"),

              onPressed: () async {
                FlutterPhoneDirectCaller.callNumber(_numberCtrl2.text);
              },
            )

          ],

    ),

    )

    ],
    )
    );

}
}