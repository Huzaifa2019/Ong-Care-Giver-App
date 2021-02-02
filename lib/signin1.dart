import 'package:flutter/material.dart';

import 'Login.dart';
import 'MainPage.dart';

class signin1 extends StatefulWidget {
  @override
  _signin1State createState() => _signin1State();
}

class _signin1State extends State<signin1> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          getOverlayWidget(),
          //getScrollableBody(),
        ],
      ),
    );
  }

  Widget getOverlayWidget() {
    return Stack(
      children: <Widget>[
        Container(
          width: 500,
          height: MediaQuery.of(context).size.height,
          margin: EdgeInsets.only(top: 0, left: 5, right: 5),
          decoration: new BoxDecoration(
              border: new Border.all(
                  width: 0,
                  color: Colors
                      .transparent), //color is transparent so that it does not blend with the actual color specified
              borderRadius: const BorderRadius.all(const Radius.circular(0.0)),
              image: DecorationImage(
                  image: AssetImage("assets/img.png"), fit: BoxFit.fill)
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
                SizedBox(
                  height: MediaQuery.of(context).size.height / 3,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 15, top: 20),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => LoginPage()));
                    },
                    child: new Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                      child: Center(
                          child: Text(
                            "Sign in",
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
                          border: Border.all(color: Colors.blueAccent),color: Colors.white),
                      child: Center(
                          child: Text(
                            "Join for Free!",
                            style: TextStyle(fontSize: 20),
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
