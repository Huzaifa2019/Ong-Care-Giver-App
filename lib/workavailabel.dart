import 'package:flutter/material.dart';
import 'package:ong/personalpref.dart';

class AvailabelWorkScreen extends StatefulWidget {
  @override
  _StandardImageListState createState() => _StandardImageListState();
}

class _StandardImageListState extends State<AvailabelWorkScreen> {
  String sun = "1";
  String mon = "2";
  String tue = "3";
  String wed = "4";
  String thu = "5";
  String fri = "6";
  String sat = "7";

  void _showModalSheetSlots(String day) {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return SingleChildScrollView(
            child: Container(
                height: 550,
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
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Select 3 times slots best suitable for you',
                            style: TextStyle(fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'on $day',
                            style: TextStyle(fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 25.0, right: 15.0, top: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Expanded(
                              // optional flex property if flex is 1 because the default flex is 1
                              flex: 1,
                              child: Text('Slot No. 1')),
                          SizedBox(width: 10.0),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            width: 140,
                            height: 60,
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: '8:00 am',
                                  suffixIcon: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        Icons.arrow_drop_up,
                                        size: 30,
                                        color: Color(0xffF4A7AF),
                                      ),
                                      Icon(
                                        Icons.arrow_drop_down,
                                        size: 30,
                                        color: Color(0xffF4A7AF),
                                      )
                                    ],
                                  ),
                                  border: new OutlineInputBorder(
                                      borderSide:
                                          new BorderSide(color: Colors.black)),
                                  labelStyle:
                                      TextStyle(color: Colors.grey[400])),
                            ),
                          ),
                          Text('-'),
                          Container(
                            width: 140,
                            height: 60,
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: '6:00 pm',
                                  suffixIcon: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        Icons.arrow_drop_up,
                                        size: 30,
                                        color: Color(0xffF4A7AF),
                                      ),
                                      Icon(
                                        Icons.arrow_drop_down,
                                        size: 30,
                                        color: Color(0xffF4A7AF),
                                      )
                                    ],
                                  ),
                                  border: new OutlineInputBorder(
                                      borderSide:
                                          new BorderSide(color: Colors.black)),
                                  labelStyle:
                                      TextStyle(color: Colors.grey[400])),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 25.0, right: 15.0, top: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Expanded(
                              // optional flex property if flex is 1 because the default flex is 1
                              flex: 1,
                              child: Text('Slot No. 2')),
                          SizedBox(width: 10.0),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            width: 140,
                            height: 60,
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: '8:00 am',
                                  suffixIcon: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        Icons.arrow_drop_up,
                                        size: 30,
                                        color: Color(0xffF4A7AF),
                                      ),
                                      Icon(
                                        Icons.arrow_drop_down,
                                        size: 30,
                                        color: Color(0xffF4A7AF),
                                      )
                                    ],
                                  ),
                                  border: new OutlineInputBorder(
                                      borderSide:
                                          new BorderSide(color: Colors.black)),
                                  labelStyle:
                                      TextStyle(color: Colors.grey[400])),
                            ),
                          ),
                          Text('-'),
                          Container(
                            width: 140,
                            height: 60,
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: '6:00 pm',
                                  suffixIcon: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        Icons.arrow_drop_up,
                                        size: 30,
                                        color: Color(0xffF4A7AF),
                                      ),
                                      Icon(
                                        Icons.arrow_drop_down,
                                        size: 30,
                                        color: Color(0xffF4A7AF),
                                      )
                                    ],
                                  ),
                                  border: new OutlineInputBorder(
                                      borderSide:
                                          new BorderSide(color: Colors.black)),
                                  labelStyle:
                                      TextStyle(color: Colors.grey[400])),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 25.0, right: 15.0, top: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Expanded(
                              // optional flex property if flex is 1 because the default flex is 1
                              flex: 1,
                              child: Text('Slot No. 3')),
                          SizedBox(width: 10.0),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 15.0, right: 15.0, top: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            width: 140,
                            height: 60,
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: '8:00 am',
                                  suffixIcon: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        Icons.arrow_drop_up,
                                        size: 30,
                                        color: Color(0xffF4A7AF),
                                      ),
                                      Icon(
                                        Icons.arrow_drop_down,
                                        size: 30,
                                        color: Color(0xffF4A7AF),
                                      )
                                    ],
                                  ),
                                  border: new OutlineInputBorder(
                                      borderSide:
                                          new BorderSide(color: Colors.black)),
                                  labelStyle:
                                      TextStyle(color: Colors.grey[400])),
                            ),
                          ),
                          Text('-'),
                          Container(
                            width: 140,
                            height: 60,
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: '6:00 pm',
                                  suffixIcon: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        Icons.arrow_drop_up,
                                        size: 30,
                                        color: Color(0xffF4A7AF),
                                      ),
                                      Icon(
                                        Icons.arrow_drop_down,
                                        size: 30,
                                        color: Color(0xffF4A7AF),
                                      )
                                    ],
                                  ),
                                  border: new OutlineInputBorder(
                                      borderSide:
                                          new BorderSide(color: Colors.black)),
                                  labelStyle:
                                      TextStyle(color: Colors.grey[400])),
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
                            "Select",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )),
                        ),
                      ),
                    ),
                  ],
                )),
          );
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
                'Availability for work',
                style: TextStyle(color: Colors.black, fontSize: 24),
              ),
            ],
          ),
          centerTitle: true,
        ),
        body: new Container(
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(color: Colors.white),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 25),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Days",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                /*sun = 'Sun';
                                _showModalSheetSlots(sun);*/
                                if(sun == "1")
                                  {
                                    sun = 'Sun';
                                    _showModalSheetSlots(sun);
                                  }
                                else{
                                  sun = '1';
                                }
                              });
                            },
                            /*onDoubleTap: () {
                              setState(() {
                                sun = '1';
                              });
                            },*/
                            child: Container(
                                height: 20,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: sun == 'Sun'
                                      ? Color(0xffF4A7AF)
                                      : Colors.transparent,
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(3.0),
                                ),
                                child: Center(
                                    child: Text(
                                  'Sun',
                                  style: TextStyle(
                                    color: sun == 'Sun'
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ))),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                /*sun = 'Sun';
                                _showModalSheetSlots(sun);*/
                                if(mon == "2")
                                {
                                  mon = 'Mon';
                                  _showModalSheetSlots(mon);
                                }
                                else{
                                  mon = '2';
                                }
                              });
                            },
                            child: Container(
                                height: 20,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: mon == 'Mon'
                                      ? Color(0xffF4A7AF)
                                      : Colors.transparent,
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(3.0),
                                ),
                                child: Center(
                                    child: Text(
                                  'Mon',
                                  style: TextStyle(
                                    color: mon == 'Mon'
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ))),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                /*sun = 'Sun';
                                _showModalSheetSlots(sun);*/
                                if(tue == "3")
                                {
                                  tue = 'Tue';
                                  _showModalSheetSlots(tue);
                                }
                                else{
                                  tue = '3';
                                }
                              });
                            },
                            child: Container(
                                height: 20,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: tue == 'Tue'
                                      ? Color(0xffF4A7AF)
                                      : Colors.transparent,
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(3.0),
                                ),
                                child: Center(
                                    child: Text(
                                  'Tue',
                                  style: TextStyle(
                                    color: tue == 'Tue'
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ))),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                /*sun = 'Sun';
                                _showModalSheetSlots(sun);*/
                                if(wed == "4")
                                {
                                  wed = 'Wed';
                                  _showModalSheetSlots(wed);
                                }
                                else{
                                  wed = '4';
                                }
                              });
                            },
                            child: Container(
                                height: 20,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: wed == 'Wed'
                                      ? Color(0xffF4A7AF)
                                      : Colors.transparent,
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(3.0),
                                ),
                                child: Center(
                                    child: Text(
                                  'Wed',
                                  style: TextStyle(
                                    color: wed == 'Wed'
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ))),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                /*sun = 'Sun';
                                _showModalSheetSlots(sun);*/
                                if(thu == "5")
                                {
                                  thu = 'Thu';
                                  _showModalSheetSlots(thu);
                                }
                                else{
                                  thu = '5';
                                }
                              });
                            },
                            child: Container(
                                height: 20,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: thu == 'Thu'
                                      ? Color(0xffF4A7AF)
                                      : Colors.transparent,
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(3.0),
                                ),
                                child: Center(
                                    child: Text(
                                  'Thu',
                                  style: TextStyle(
                                    color: thu == 'Thu'
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ))),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                /*sun = 'Sun';
                                _showModalSheetSlots(sun);*/
                                if(fri == "6")
                                {
                                  fri = 'Fri';
                                  _showModalSheetSlots(fri);
                                }
                                else{
                                  fri = '6';
                                }
                              });
                            },
                            child: Container(
                                height: 20,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: fri == 'Fri'
                                      ? Color(0xffF4A7AF)
                                      : Colors.transparent,
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(3.0),
                                ),
                                child: Center(
                                    child: Text(
                                  'Fri',
                                  style: TextStyle(
                                    color: fri == 'Fri'
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ))),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                /*sun = 'Sun';
                                _showModalSheetSlots(sun);*/
                                if(sat == "7")
                                {
                                  sat = 'Sat';
                                  _showModalSheetSlots(sat);
                                }
                                else{
                                  sat = '7';
                                }
                              });
                            },
                            child: Container(
                                height: 20,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: sat == 'Sat'
                                      ? Color(0xffF4A7AF)
                                      : Colors.transparent,
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(3.0),
                                ),
                                child: Center(
                                    child: Text(
                                  'Sat',
                                  style: TextStyle(
                                    color: sat == 'Sat'
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ))),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
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
                            child: Text('Start Date')),
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
                            readOnly: true,
                            onTap: (){
                              showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2000),
                                lastDate: DateTime(2025),
                              );
                            },
                            decoration: InputDecoration(
                                suffixIcon: Icon(Icons.calendar_today,
                                    color: Color(0xffF4A7AF)),
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
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15.0, right: 25.0, top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text('End Date'),
                        Text('Optional'),
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
                            readOnly: true,
                            onTap: (){
                              showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2000),
                                lastDate: DateTime(2025),
                              );
                            },
                            decoration: InputDecoration(
                                suffixIcon: Icon(Icons.calendar_today,
                                    color: Color(0xffF4A7AF)),
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
                      builder: (context) => PersonalPreferancesScreen()));
            },
            child: new Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Center(
                  child: Text(
                "Save",
                style: TextStyle(fontSize: 20, color: Colors.white),
              )),
            ),
          ),
        ),
      ),
    );
  }
}
