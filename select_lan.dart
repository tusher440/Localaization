import 'package:flutter/material.dart';
import 'package:localization1/homepage.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Selectlan extends StatefulWidget {
  @override
  _SelectlanState createState() => _SelectlanState();
}

class _SelectlanState extends State<Selectlan> {

  bool isSelectedEnglish = false;
  bool isSelectedBangla = false;
  bool _lan = false;

  void saveLan(bool lan) async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setBool('lan', lan);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    saveLan(lan);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Language"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            FlatButton(
              color: Colors.blue,
                onPressed: (){
                  setState(() {
                    isSelectedBangla = true;
                    isSelectedEnglish = false;
                    _lan = true;
                    EasyLocalization.of(context).locale = Locale("BN","bn");
                  });
                },
                child: Text("বাংলা"),
            ),

            FlatButton(
              color: Colors.blue,
              onPressed: (){
                setState(() {
                  isSelectedBangla = false;
                  isSelectedEnglish = true;
                  _lan = true;
                  EasyLocalization.of(context).locale = Locale("EN", "en");
                });
              },
              child: Text("English"),
            ),

            FlatButton(
              color: Colors.blue,
              onPressed: (){
                setState(() {
                  saveLan(_lan);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage()));
                });
              },
              child: Text("Next Page"),
            ),

          ],
        ),
      ),

    );
  }
}



