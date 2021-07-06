import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_localaization1/Calculation.dart';
import 'package:flutter_localaization1/output.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Inputpage extends StatefulWidget {
  @override
  _InputpageState createState() => _InputpageState();
}

class _InputpageState extends State<Inputpage> {

  int height = 0;
  int heightsbar = 1;
  int weigth = 20;
  int age = 10;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF10446e),
      appBar: AppBar(
        backgroundColor:  Color(0xFF10446e),

        title: Center(
          child: Text("BMI Calculator".tr().toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 200,
                    width: 170,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF2d87cf),
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.male,
                          size: 40,
                          color: Colors.white,
                        ),
                        SizedBox(height: 10,),
                        Text("Male".tr().toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 180,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Color(0xFF2d87cf),
                      borderRadius: BorderRadius.circular(10),
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(FontAwesomeIcons.female,
                          size: 20,
                          color: Colors.white,
                        ),
                        SizedBox(height: 10,),
                        Text("Female".tr().toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFF2d87cf),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Height".tr().toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),

                    SizedBox(height: 10,),

                    Row(
                      children: [
                        Text(height.toString().tr().toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(heightsbar.toString().tr().toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: IconButton(
                            icon: Icon(FontAwesomeIcons.plus,
                              color: Colors.white,
                            ),
                            onPressed: (){
                              setState(() {
                                if(heightsbar < 9){
                                  heightsbar++;
                                }
                                //end test
                              });
                            },
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: IconButton(
                            icon: Icon(FontAwesomeIcons.minus,
                              color: Colors.white,
                            ),
                            onPressed: (){
                              setState(() {
                                heightsbar--;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 180,
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xFF2d87cf),
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Text("Weight".tr().toString(),
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),

                        SizedBox(height: 10,),

                        Text(weigth.toString().tr().toString(),
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: Icon(FontAwesomeIcons.plus,
                                color: Colors.white,
                              ),
                              onPressed: (){
                                setState(() {
                                  weigth++;
                                });
                              },
                            ),

                            IconButton(
                              icon: Icon(FontAwesomeIcons.minus,
                                color: Colors.white,
                              ),

                              onPressed: (){
                                setState(() {
                                  weigth--;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 180,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Color(0xFF2d87cf),
                      borderRadius: BorderRadius.circular(10),
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Text("Age".tr().toString(),
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                          ),
                        ),

                        SizedBox(height: 10,),

                        Text(age.toString(),
                          style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            IconButton(
                              icon: Icon(FontAwesomeIcons.plus,
                                color: Colors.white,
                              ),
                              onPressed: (){
                                setState(() {
                                  age++;
                                });
                              },
                            ),

                            IconButton(
                              icon: Icon(FontAwesomeIcons.minus,
                                color: Colors.white,
                              ),
                              onPressed: (){
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            
            FlatButton(
                onPressed: (){
                  Calculation cal = Calculation(h: height, w: weigth );
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Outputpage(
                    result: cal.calculations(),
                    feedback: cal.feedback(),
                    sug: cal.sug(),

                  )
                  ));
                },
                color: Colors.pinkAccent,
                splashColor: Colors.green,
                child: Text("Calculate".tr().toString(),
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black
                  ),
                )
            ),
          ],
        ),
      ),
    );
  }
}
