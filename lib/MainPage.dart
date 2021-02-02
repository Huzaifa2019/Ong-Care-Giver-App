import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ong/Login.dart';

import 'jobselect.dart';

final size = 0;

// ignore: must_be_immutable
class MainScreen extends StatefulWidget {
  MainScreen();

  String a;

  @override
  State<MainScreen> createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          getOverlayWidget(),
          getScrollableBody(),
        ],
      ),
    );
  }

  var selected;
  bool isChecked = true;
  bool status = false;
  List<DropdownMenuItem<String>> timing = [];

  Widget getOverlayWidget() {
    return Stack(
      children: <Widget>[
        Container(
          width: 500,
          height: 600,
          margin: EdgeInsets.only(top: 0, left: 5, right: 5),
          decoration: new BoxDecoration(
              border: new Border.all(
                  width: 0,
                  color: Colors
                      .transparent), //color is transparent so that it does not blend with the actual color specified
              borderRadius: const BorderRadius.all(const Radius.circular(0.0)),
              image: DecorationImage(
                  image: AssetImage("assets/img.png"), fit: BoxFit.cover)
              // Specifies the background color and the opacity
              ),
        ),
        Container(
//          width:,
          margin: EdgeInsets.only(left: 0, top: 40),

          child: Card(
            elevation: 0.0,
            color: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(7.0),
            ),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                        left: 40,
                        right: 40,
                      ),
                      width: 140,
                      height: 150,
                      child: Container(
                        decoration: BoxDecoration(
                            image: new DecorationImage(
                          image: new AssetImage('assets/love.png'),
                        )),
                      ),
                    )
                  ],
                ),
                Text(
                  'Ongster Caregiver',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget getScrollableBody() {
    return Container(
      decoration: new BoxDecoration(
        border: new Border.all(
            width: 0,
            color: Colors
                .transparent), //color is transparent so that it does not blend with the actual color specified
        borderRadius: const BorderRadius.all(const Radius.circular(0.0)),
      ),
      margin: EdgeInsets.only(top: 250, left: 0, right: 0),
      height: 500,
      width: 600,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        elevation: 0.0,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 15, top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Care For All You Love',
                      style: TextStyle(
                        fontSize: 27,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 15, top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        'In This Time of need.We Are here to Help.',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 15, top: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        'I Would Like To:',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              GestureDetector(
                onTap: (){
                  showDialog(
                      context: context,
                      builder: (BuildContext context){
                        return AlertDialog(
                          title: Text("Alert"),
                          content: Text("Please Download Ongster Care App available in Playstore."),
                        );
                      }
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 15, top: 20),
                  child: new Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blueAccent)),
                    child: Center(
                        child: Text(
                      "Hire a caregiver",
                      style: TextStyle(fontSize: 20),
                    )),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => JobSelectPage()));
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 15, top: 20),
                  child: new Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: Center(
                        child: Text(
                      "Find a job",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
                  ),
                ),
              ),
              SizedBox(
                height: 45,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Already have an account?',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => LoginPage()));
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Color(0xffF4A7AF),
                        fontSize: 20,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }

// ignore: unused_element

}
