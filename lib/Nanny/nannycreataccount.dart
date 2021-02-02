import 'package:flutter/material.dart';
import 'package:ong/Nanny/successfullsignup.dart';

class NannyCreateAccountScreen extends StatefulWidget {
  @override
  _StandardImageListState createState() => _StandardImageListState();
}

class _StandardImageListState extends State<NannyCreateAccountScreen> {
  List<String> listOfCategory = [
    'It',
    'Computer Science',
    'Business',
    'Data Science',
    'Infromation Technologies',
    'Health',
    'Physics'
  ];
  String selectedIndexCategory = 'Business';

  bool checkBoxValue = false;

  // void _showModalSheet() {
  //   showModalBottomSheet(
  //       context: context,
  //       builder: (builder) {
  //         return Container(
  //             height: 500,
  //             decoration: new BoxDecoration(
  //                 borderRadius: new BorderRadius.only(
  //               topLeft: const Radius.circular(40.0),
  //               topRight: const Radius.circular(40.0),
  //             )),
  //             child: Column(
  //               children: [
  //                 Padding(
  //                   padding: const EdgeInsets.all(5.0),
  //                   child: Row(
  //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                     children: [
  //                       Text(
  //                         'Firends/Family',
  //                         style: TextStyle(fontSize: 18),
  //                       ),
  //                       new Checkbox(
  //                           value: checkBoxValue,
  //                           activeColor: Colors.green,
  //                           onChanged: (bool newValue) {
  //                             setState(() {
  //                               checkBoxValue = newValue;
  //                             });
  //                           }),
  //                     ],
  //                   ),
  //                 ),
  //                 Padding(
  //                   padding: const EdgeInsets.all(5.0),
  //                   child: Row(
  //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                     children: [
  //                       Text(
  //                         'TV ad',
  //                         style: TextStyle(fontSize: 18),
  //                       ),
  //                       new Checkbox(
  //                           value: checkBoxValue,
  //                           activeColor: Colors.green,
  //                           onChanged: (bool newValue) {
  //                             setState(() {
  //                               checkBoxValue = newValue;
  //                             });
  //                           }),
  //                     ],
  //                   ),
  //                 ),
  //                 Padding(
  //                   padding: const EdgeInsets.all(5.0),
  //                   child: Row(
  //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                     children: [
  //                       Text(
  //                         'Search Engines',
  //                         style: TextStyle(fontSize: 18),
  //                       ),
  //                       new Checkbox(
  //                           value: checkBoxValue,
  //                           activeColor: Colors.green,
  //                           onChanged: (bool newValue) {
  //                             setState(() {
  //                               checkBoxValue = newValue;
  //                             });
  //                           }),
  //                     ],
  //                   ),
  //                 ),
  //                 Padding(
  //                   padding: const EdgeInsets.all(5.0),
  //                   child: Row(
  //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                     children: [
  //                       Text(
  //                         'Banner Ad',
  //                         style: TextStyle(fontSize: 18),
  //                       ),
  //                       new Checkbox(
  //                           value: checkBoxValue,
  //                           activeColor: Colors.green,
  //                           onChanged: (bool newValue) {
  //                             setState(() {
  //                               checkBoxValue = newValue;
  //                             });
  //                           }),
  //                     ],
  //                   ),
  //                 ),
  //                 Padding(
  //                   padding: const EdgeInsets.all(5.0),
  //                   child: Row(
  //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                     children: [
  //                       Text(
  //                         'Facebook',
  //                         style: TextStyle(fontSize: 18),
  //                       ),
  //                       new Checkbox(
  //                           value: checkBoxValue,
  //                           activeColor: Colors.green,
  //                           onChanged: (bool newValue) {
  //                             setState(() {
  //                               checkBoxValue = newValue;
  //                             });
  //                           }),
  //                     ],
  //                   ),
  //                 ),
  //                 Padding(
  //                   padding: const EdgeInsets.all(5.0),
  //                   child: Row(
  //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                     children: [
  //                       Text(
  //                         'Parenting Group or Forum',
  //                         style: TextStyle(fontSize: 18),
  //                       ),
  //                       new Checkbox(
  //                           value: checkBoxValue,
  //                           activeColor: Colors.green,
  //                           onChanged: (bool newValue) {
  //                             setState(() {
  //                               checkBoxValue = newValue;
  //                             });
  //                           }),
  //                     ],
  //                   ),
  //                 ),
  //                 Padding(
  //                   padding: const EdgeInsets.all(5.0),
  //                   child: Row(
  //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                     children: [
  //                       Text(
  //                         'Other Social Media',
  //                         style: TextStyle(fontSize: 18),
  //                       ),
  //                       new Checkbox(
  //                           value: checkBoxValue,
  //                           activeColor: Colors.green,
  //                           onChanged: (bool newValue) {
  //                             setState(() {
  //                               checkBoxValue = newValue;
  //                             });
  //                           }),
  //                     ],
  //                   ),
  //                 ),
  //                 Padding(
  //                   padding:
  //                       const EdgeInsets.only(left: 20.0, right: 15, top: 20),
  //                   child: GestureDetector(
  //                     onTap: () {
  //                       // Navigator.push(
  //                       //     context,
  //                       //     new MaterialPageRoute(
  //                       //         builder: (context) => VerifyNumberScreen()));
  //                     },
  //                     child: new Container(
  //                       height: 40,
  //                       width: MediaQuery.of(context).size.width,
  //                       decoration: BoxDecoration(
  //                         color: Colors.blue,
  //                       ),
  //                       child: Center(
  //                           child: Text(
  //                         "Select",
  //                         style: TextStyle(fontSize: 20, color: Colors.white),
  //                       )),
  //                     ),
  //                   ),
  //                 ),
  //               ],
  //             ));
  //       });
  // }

  @override
  Widget build(BuildContext context) {
    /// ------------------------------------
    /// Build main content with safeArea widget
    /// ------------------------------------
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              size: 28,
              color: Colors.black,
            ),
          ),
          title: Column(
            children: [
              SizedBox(height: 25),
              Text(
                'Create an Account',
                style: TextStyle(color: Colors.black, fontSize: 24),
              ),
            ],
          ),
          centerTitle: true,
        ),
        body: new Container(
            decoration: BoxDecoration(color: Colors.white),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 15),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15.0, right: 15, top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Let’s create you a free account so, its',
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15.0, right: 15, top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'easier to locate the perfect caregiver',
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15.0, right: 15, top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'for you out of 117 from your area.',
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                            // optional flex property if flex is 1 because the default flex is 1
                            flex: 1,
                            child: Text('Firstname')),
                        SizedBox(width: 10.0),
                        Expanded(
                            // optional flex property if flex is 1 because the default flex is 1
                            flex: 1,
                            child: Text('Lastname')),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15.0, right: 15.0, top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                          // optional flex property if flex is 1 because the default flex is 1
                          flex: 1,
                          child: TextField(
                            decoration: InputDecoration(
                                border: new OutlineInputBorder(
                                    borderSide:
                                        new BorderSide(color: Colors.black)),
                                labelStyle: TextStyle(color: Colors.grey[400])),
                          ),
                        ),
                        SizedBox(width: 10.0),
                        Expanded(
                          // optional flex property if flex is 1 because the default flex is 1
                          flex: 1,
                          child: TextField(
                            decoration: InputDecoration(
                                border: new OutlineInputBorder(
                                    borderSide:
                                        new BorderSide(color: Colors.black)),
                                labelStyle: TextStyle(color: Colors.grey[400])),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15.0, right: 15.0, top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                            // optional flex property if flex is 1 because the default flex is 1
                            flex: 1,
                            child: Text('Email')),
                        SizedBox(width: 10.0),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15.0, right: 15.0, top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                          // optional flex property if flex is 1 because the default flex is 1
                          flex: 1,
                          child: TextField(
                            decoration: InputDecoration(
                                border: new OutlineInputBorder(
                                    borderSide:
                                        new BorderSide(color: Colors.black)),
                                labelStyle: TextStyle(color: Colors.grey[400])),
                          ),
                        ),
                        SizedBox(width: 10.0),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15.0, right: 15.0, top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                            // optional flex property if flex is 1 because the default flex is 1
                            flex: 1,
                            child: Text('Password')),
                        SizedBox(width: 10.0),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15.0, right: 15.0, top: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                          // optional flex property if flex is 1 because the default flex is 1
                          flex: 1,
                          child: TextField(
                            decoration: InputDecoration(
                                border: new OutlineInputBorder(
                                    borderSide:
                                        new BorderSide(color: Colors.black)),
                                labelStyle: TextStyle(color: Colors.grey[400])),
                          ),
                        ),
                        SizedBox(width: 10.0),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15.0, right: 15.0, top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                            // optional flex property if flex is 1 because the default flex is 1
                            flex: 1,
                            child: Text('How did you hear about us?')),
                        SizedBox(width: 10.0),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15.0, right: 25, top: 10),
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                          height: 55,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(3.0),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.arrow_drop_down,
                                size: 40,
                                color: Color(0xffF4A7AF),
                              )
                            ],
                          )),
                    ),
                  ),
                ],
              ),
            )),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 15, top: 20),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => SuccessfullSignupScreen()));
            },
            child: new Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Center(
                  child: Text(
                "Lets look for caregivers",
                style: TextStyle(fontSize: 20, color: Colors.white),
              )),
            ),
          ),
        ),
      ),
    );
  }
}
