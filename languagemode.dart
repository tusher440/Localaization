import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_localaization1/input.dart';

class Languagemode extends StatefulWidget {
  @override
  _LanguagemodeState createState() => _LanguagemodeState();
}

class _LanguagemodeState extends State<Languagemode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
              color: Colors.blue,
                onPressed: () {
                  setState(() {
                    EasyLocalization.of(context).locale = Locale("en","EN");
                  });
                },
                child: Text("For English"),
            ),
            SizedBox(height: 25,),
            FlatButton(
              color: Colors.deepOrange,
                onPressed: () {
                  setState(() {
                    EasyLocalization.of(context).locale = Locale("bn","BN");
                  });
                },
                child: Text("For Bangla"),
            ),
            SizedBox(height: 25,),
            FlatButton(
              color: Colors.teal,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Inputpage()));
                },
                child: Text("Calculate BMI")),
          ],
        ),
      ),
    ));
  }
}
