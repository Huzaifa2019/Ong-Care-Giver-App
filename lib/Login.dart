import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ong/jobselect.dart';

import 'MainPage.dart';

// ignore: must_be_immutable
class LoginPage extends StatefulWidget {
  LoginPage();

  String a;

  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
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
          margin: EdgeInsets.only(left: 0, top: 30),

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
//                            color: Colors.green,
                      child: Container(
                        height: 100,
                        width: 500,
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
      height: 700,
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 15),
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
                padding: const EdgeInsets.only(left: 15.0, bottom: 5, top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Email',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: TextField(
                  decoration: new InputDecoration(
                    border: new OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.teal)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, bottom: 5, top: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Password',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    Text(
                      'Forgot Password?',
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: TextField(
                  decoration: new InputDecoration(
                    border: new OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.teal)),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 15, top: 20),
                child: GestureDetector(
                  onTap: () {
                    /*Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (context) => JobSelectPage()));*/
                  },
                  child: new Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                    child: Center(
                        child: Text(
                      "Log in",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )),
                  ),
                ),
              ),
             
              GestureDetector(
                onTap: (){
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => MainScreen()));
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
                      "Join for Free!",
                      style: TextStyle(fontSize: 20),
                    )),
                  ),
                ),
              ),
             
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }

// ignore: unused_element

}
