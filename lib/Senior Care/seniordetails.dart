import 'package:flutter/material.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:ong/Petsitter/petsitterlocation.dart';
import 'package:ong/Senior%20Care/seniorlocation.dart';

class SeniorCareDetailsPage extends StatefulWidget {
  @override
  _StandardImageListState createState() => _StandardImageListState();
}

class _StandardImageListState extends State<SeniorCareDetailsPage> {
  bool checkBoxValue = false;
  String _singleValue = "Text alignment right";

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

  void _showModalSheetPetsNeeded() {
    setState(() {
      showModalBottomSheet(
          context: context,
          builder: (builder) {
            return Container(
                height: 350,
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
                            'Me',
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
                            'My Parent',
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
                            'My Spouse',
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
                            'My Grandparent',
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
                            'My Friend/Extended relative',
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
                            "Add",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )),
                        ),
                      ),
                    ),
                  ],
                ));
          });
    });
  }

  void _showModalSheetApply() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Container(
              height: 500,
              decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(40.0),
                topRight: const Radius.circular(40.0),
              )),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Meal Prep',
                          style: TextStyle(fontSize: 15),
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
                          'Feeding',
                          style: TextStyle(fontSize: 15),
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
                          'Housekeeping',
                          style: TextStyle(fontSize: 15),
                        ),
                        new RadioButton(
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
                          'Companionship',
                          style: TextStyle(fontSize: 15),
                        ),
                        new RadioButton(
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
                          'Bathing/Dressing',
                          style: TextStyle(fontSize: 15),
                        ),
                        new RadioButton(
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
                          'Medication Management',
                          style: TextStyle(fontSize: 15),
                        ),
                        new RadioButton(
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
                          'Errands/Shopping',
                          style: TextStyle(fontSize: 15),
                        ),
                        new RadioButton(
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
                  // Padding(
                  //   padding: const EdgeInsets.all(5.0),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       Text(
                  //         'Help staying physically active',
                  //         style: TextStyle(fontSize: 15),
                  //       ),
                  //       new RadioButton(
                  //         description: "",
                  //         value: "",
                  //         groupValue: _singleValue,
                  //         onChanged: (value) => setState(
                  //           () => _singleValue = value,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.all(5.0),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       Text(
                  //         'Transportation',
                  //         style: TextStyle(fontSize: 15),
                  //       ),
                  //       new RadioButton(
                  //         description: "",
                  //         value: "",
                  //         groupValue: _singleValue,
                  //         onChanged: (value) => setState(
                  //           () => _singleValue = value,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20.0, right: 15, top: 10),
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
                'Senior Care Details',
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
                        const EdgeInsets.only(left: 15.0, right: 25, top: 10),
                    child: GestureDetector(
                      onTap: _showModalSheetPetsNeeded,
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
                                "Male",
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
                                "Female",
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
                            child: Text('What type of help is needed?')),
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
                      builder: (context) => SeniorLocationPage()));
            },
            child: new Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.blue,
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
