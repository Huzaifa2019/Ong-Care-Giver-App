import 'package:flutter/material.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:ong/BabySitter/Your_Location/locationyours.dart';
import 'package:ong/SpecialNeeds/speciallocation.dart';

class SpecialNeedDetailsPage extends StatefulWidget {
  @override
  _StandardImageListState createState() => _StandardImageListState();
}

class _StandardImageListState extends State<SpecialNeedDetailsPage> {
  bool checkBoxValue = false;
  String _singleValue = "Text alignment right";
  int infant = 0;
  int youth = 0;
  int teen = 0;
  int adult = 0;
  int senior = 0;

  void _showModalSheet() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Container(
              height: 250,
              decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(40.0),
                topRight: const Radius.circular(40.0),
              )),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'In a week',
                          style: TextStyle(fontSize: 18),
                        ),
                        RadioButton(
                          description: "",
                          value: "",
                          groupValue: _singleValue,
                          onChanged: (value) => setState(
                            () => _singleValue = value,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Right now',
                          style: TextStyle(fontSize: 18),
                        ),
                        RadioButton(
                          description: "",
                          value: "",
                          groupValue: _singleValue,
                          onChanged: (value) => setState(
                            () => _singleValue = value,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '1-2 months',
                          style: TextStyle(fontSize: 18),
                        ),
                        RadioButton(
                          description: "",
                          value: "",
                          groupValue: _singleValue,
                          onChanged: (value) => setState(
                            () => _singleValue = value,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Just browsing',
                          style: TextStyle(fontSize: 18),
                        ),
                        RadioButton(
                          description: "",
                          value: "",
                          groupValue: _singleValue,
                          onChanged: (value) => setState(
                            () => _singleValue = value,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ));
        });
  }

  void _showModalSheetApply() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Container(
              height: 600,
              decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(40.0),
                topRight: const Radius.circular(40.0),
              )),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'ADD',
                          style: TextStyle(fontSize: 18),
                        ),
                        new Checkbox(
                            value: checkBoxValue,
                            activeColor: Colors.green,
                            onChanged: (bool newValue) {
                              setState(() {
                                checkBoxValue = newValue;
                              });
                            }),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'ADHD',
                          style: TextStyle(fontSize: 18),
                        ),
                        new Checkbox(
                            value: checkBoxValue,
                            activeColor: Colors.green,
                            onChanged: (bool newValue) {
                              setState(() {
                                checkBoxValue = newValue;
                              });
                            }),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Aspergers',
                          style: TextStyle(fontSize: 18),
                        ),
                        new Checkbox(
                            value: checkBoxValue,
                            activeColor: Colors.green,
                            onChanged: (bool newValue) {
                              setState(() {
                                checkBoxValue = newValue;
                              });
                            }),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Asthma',
                          style: TextStyle(fontSize: 18),
                        ),
                        new Checkbox(
                            value: checkBoxValue,
                            activeColor: Colors.green,
                            onChanged: (bool newValue) {
                              setState(() {
                                checkBoxValue = newValue;
                              });
                            }),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Autism',
                          style: TextStyle(fontSize: 18),
                        ),
                        new Checkbox(
                            value: checkBoxValue,
                            activeColor: Colors.green,
                            onChanged: (bool newValue) {
                              setState(() {
                                checkBoxValue = newValue;
                              });
                            }),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Austin Spectrum Disorder',
                          style: TextStyle(fontSize: 18),
                        ),
                        new Checkbox(
                            value: checkBoxValue,
                            activeColor: Colors.green,
                            onChanged: (bool newValue) {
                              setState(() {
                                checkBoxValue = newValue;
                              });
                            }),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Blindness/Visual Impairness',
                          style: TextStyle(fontSize: 18),
                        ),
                        new Checkbox(
                            value: checkBoxValue,
                            activeColor: Colors.green,
                            onChanged: (bool newValue) {
                              setState(() {
                                checkBoxValue = newValue;
                              });
                            }),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20.0, right: 15, top: 20),
                    child: GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     new MaterialPageRoute(
                        //         builder: (context) => VerifyNumberScreen()));
                      },
                      child: new Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                        ),
                        child: Center(
                            child: Text(
                          "Select",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        )),
                      ),
                    ),
                  ),
                ],
              ));
        });
  }

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
                'Special Needs Details',
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
                        const EdgeInsets.only(left: 15.0, right: 15.0, top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                            // optional flex property if flex is 1 because the default flex is 1
                            flex: 1,
                            child: Text('When do you need it?')),
                        SizedBox(width: 10.0),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15.0, right: 25, top: 10),
                    child: GestureDetector(
                      onTap: _showModalSheet,
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
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15.0, right: 15.0, top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            height: 55,
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(3.0),
                                  side: BorderSide(color: Colors.grey)),
                              color: Colors.white,
                              textColor: Colors.black,
                              padding: EdgeInsets.all(8.0),
                              onPressed: () {},
                              child: Text(
                                "Recurring",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 5.0),
                        Expanded(
                          child: Container(
                            height: 55,
                            child: FlatButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(3.0),
                                  side: BorderSide(color: Colors.grey)),
                              color: Colors.white,
                              textColor: Colors.black,
                              padding: EdgeInsets.all(8.0),
                              onPressed: () {},
                              child: Text(
                                "One Time",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 15)
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
                            child: Text('Who needs care?')),
                        SizedBox(width: 10.0),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15.0, right: 15.0, top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Infant',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  infant--;
                                });
                              },
                              child: Icon(
                                Icons.minimize,
                                color: Color(0xffF4A7AF),
                                size: 40,
                              ),
                            ),
                            Text(
                              infant.toString(),
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  infant++;
                                });
                              },
                              child: Icon(
                                Icons.add,
                                size: 40,
                                color: Color(0xffF4A7AF),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15.0, right: 15.0, top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Youth',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  youth--;
                                });
                              },
                              child: Icon(
                                Icons.minimize,
                                color: Color(0xffF4A7AF),
                                size: 40,
                              ),
                            ),
                            Text(
                              youth.toString(),
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  youth++;
                                });
                              },
                              child: Icon(
                                Icons.add,
                                size: 40,
                                color: Color(0xffF4A7AF),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15.0, right: 15.0, top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Teen',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  teen--;
                                });
                              },
                              child: Icon(
                                Icons.minimize,
                                color: Color(0xffF4A7AF),
                                size: 40,
                              ),
                            ),
                            Text(
                              teen.toString(),
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  teen++;
                                });
                              },
                              child: Icon(
                                Icons.add,
                                size: 40,
                                color: Color(0xffF4A7AF),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15.0, right: 15.0, top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Adult',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  adult--;
                                });
                              },
                              child: Icon(
                                Icons.minimize,
                                color: Color(0xffF4A7AF),
                                size: 40,
                              ),
                            ),
                            Text(
                              adult.toString(),
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  adult++;
                                });
                              },
                              child: Icon(
                                Icons.add,
                                size: 40,
                                color: Color(0xffF4A7AF),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15.0, right: 15.0, top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Senior',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  senior--;
                                });
                              },
                              child: Icon(
                                Icons.minimize,
                                color: Color(0xffF4A7AF),
                                size: 40,
                              ),
                            ),
                            Text(
                              senior.toString(),
                              style:
                                  TextStyle(color: Colors.black, fontSize: 16),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  senior++;
                                });
                              },
                              child: Icon(
                                Icons.add,
                                size: 40,
                                color: Color(0xffF4A7AF),
                              ),
                            ),
                          ],
                        )
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
                            child: Text(
                                'Which medical condition is most appropriate?')),
                        SizedBox(width: 10.0),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15.0, right: 25, top: 10),
                    child: GestureDetector(
                      onTap: _showModalSheetApply,
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
                      builder: (context) => SpecialLocationPage()));
            },
            child: new Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.grey,
              ),
              child: Center(
                  child: Text(
                "Apply",
                style: TextStyle(fontSize: 20, color: Colors.white),
              )),
            ),
          ),
        ),
      ),
    );
  }
}
