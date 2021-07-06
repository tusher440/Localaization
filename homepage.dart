import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:shared_preferences/shared_preferences.dart';


var lan;
var bbb;
var eee;


String replaceEnglishNumber(String input) {
  const english = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0'];
  const bangla = ["১", "২", "৩", "৪", "৫", "৬", "৭", "৮", "৯", "০"];

  for (int i = 0; i < english.length; i++) {
    input = input.replaceAll(english[i], bangla[i]);
  }

  return input;
}

String replacebanglahNumber(String input) {
  const english = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0'];
  const bangla = ["১", "২", "৩", "৪", "৫", "৬", "৭", "৮", "৯", "০"];

  for (int i = 0; i < bangla.length; i++) {
    input = input.replaceAll(bangla[i], english[i]);
  }

  return input;
}


class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {


  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // String replaceEnglishNumber(String input) {
  //   const english = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0'];
  //   const bangla = ["১", "২", "৩", "৪", "৫", "৬", "৭", "৮", "৯", "০"];
  //
  //   for (int i = 0; i < english.length; i++) {
  //     input = input.replaceAll(english[i], bangla[i]);
  //   }
  //   return input;
  // }
  Future<bool> getLan() async {
    //get the save lan usign Sharedpreferrences
    SharedPreferences pref = await SharedPreferences.getInstance();
    bool p2 = pref.getBool('lan');

    setState(() {
      lan = p2;
    });
    return true;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLan();
  }

  //
  // getdata() async {
  //   SharedPreferences pref = await SharedPreferences.getInstance();
  //   bool p2 = pref.getBool('lan');
  //   setState(() {
  //     lan = p2;
  //   });
  //
  // }
  //
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   this.getdata();
  // }

  @override
  Widget build(BuildContext context) {


    bbb = replaceEnglishNumber(_counter.toString());
    eee = replacebanglahNumber(_counter.toString());
    

    return Container(
      color: Colors.white,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("homepage".tr().toString(),
              style: TextStyle(
                fontSize: 25,
              ),
            ),

            Text("name".tr().toString(),
              style: TextStyle(
                fontSize: 25,
              ),
            ),

            Text(
              lan ? '$eee': '$bbb' ,

            ),

            FloatingActionButton(
              onPressed: _incrementCounter,
              tooltip: 'Increment',
              child: Icon(Icons.add),
            ),

          ],
        ),
      ),
    );
  }
}
