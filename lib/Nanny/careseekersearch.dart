import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ong/BottomBar/bottomwidget.dart';

// ignore: must_be_immutable
class CareSeekerSearchPage extends StatefulWidget {
  CareSeekerSearchPage();

  String a;

  @override
  State<CareSeekerSearchPage> createState() => MembershipNannyPageState();
}

class MembershipNannyPageState extends State<CareSeekerSearchPage>
    with SingleTickerProviderStateMixin {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  TabController _tabController;
  ScrollController _scrollController;
  var selected;
  bool isChecked = true;
  bool status = false;
  List<DropdownMenuItem<String>> timing = [];
  @override
  void initState() {
    super.initState();
    _scrollController = new ScrollController();
    _tabController = new TabController(length: 3, vsync: this);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 270,
                  margin: EdgeInsets.only(left: 0),
                  child: Card(
                    elevation: 0.0,
                    color: Color(0xffF4A7AF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30.0),
                        bottomRight: Radius.circular(30.0),
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 20),
                                child: Text(
                                  'Nannies',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 27,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Icon(Icons.arrow_drop_down,
                                      color: Colors.white)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20.0, right: 20, top: 25),
                          child: Container(
                            height: 40,
                            child: TextFormField(
                              textAlignVertical: TextAlignVertical.bottom,
                              decoration: InputDecoration(
                                hintStyle: TextStyle(color: Colors.white),
                                hintText: 'Date and times',
                                suffixIcon: Icon(
                                  Icons.calendar_today_outlined,
                                  color: Colors.white,
                                ),
                                border: InputBorder.none,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30.0)),
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30.0)),
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 15.0, right: 15),
                                child: Text(
                                  'Filters',
                                  style: TextStyle(
                                      color: Colors.white,
                                      decoration: TextDecoration.underline,
                                      fontSize: 21,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Image.asset(
                                    'assets/filter.png',
                                    color: Colors.white,
                                    height: 30,
                                    width: 30,
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  new Container(
                    height: 120,
                    width: MediaQuery.of(context).size.width * 0.86,
                    margin:
                        const EdgeInsets.only(left: 15.0, right: 15, top: 25),
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black54),
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 80.0,
                              width: 50.0,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                                image: DecorationImage(
                                  image: AssetImage('assets/image.jpg'),
                                  fit: BoxFit.cover,
                                ),
                                shape: BoxShape.rectangle,
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        'Chad B',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                      Text(
                                        ' 21 yrs',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      ),
                                      Text(
                                        'Premium',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.blue),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: Colors.blue,
                                      ),
                                      Text(
                                        'Lawrence, KS',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      ),
                                      Text(
                                        '< 1 mi',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.blue),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        '11\$-18\$ /hour',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      ),
                                      Text(
                                        '',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      ),
                                      Container(
                                          height: 20,
                                          width: 20,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color: Colors.blue,
                                            ),
                                          ),
                                          child: Center(
                                              child: Icon(
                                            Icons.arrow_forward,
                                            color: Colors.blue,
                                            size: 15,
                                          ))),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  new Container(
                    height: 120,
                    width: MediaQuery.of(context).size.width * 0.86,
                    margin:
                        const EdgeInsets.only(left: 15.0, right: 15, top: 25),
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black54),
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 80.0,
                              width: 50.0,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                                image: DecorationImage(
                                  image: AssetImage('assets/image.jpg'),
                                  fit: BoxFit.cover,
                                ),
                                shape: BoxShape.rectangle,
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        'Chad B',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                      Text(
                                        ' 21 yrs',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      ),
                                      Text(
                                        'Premium',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.blue),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: Colors.blue,
                                      ),
                                      Text(
                                        'Lawrence, KS',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      ),
                                      Text(
                                        '< 1 mi',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.blue),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        '11\$-18\$ /hour',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      ),
                                      Text(
                                        '',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      ),
                                      Container(
                                          height: 20,
                                          width: 20,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color: Colors.blue,
                                            ),
                                          ),
                                          child: Center(
                                              child: Icon(
                                            Icons.arrow_forward,
                                            color: Colors.blue,
                                            size: 15,
                                          ))),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  new Container(
                    height: 120,
                    width: MediaQuery.of(context).size.width * 0.86,
                    margin:
                        const EdgeInsets.only(left: 15.0, right: 15, top: 25),
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black54),
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 80.0,
                              width: 50.0,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                                image: DecorationImage(
                                  image: AssetImage('assets/image.jpg'),
                                  fit: BoxFit.cover,
                                ),
                                shape: BoxShape.rectangle,
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        'Chad B',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                      Text(
                                        ' 21 yrs',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      ),
                                      Text(
                                        'Premium',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.blue),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: Colors.blue,
                                      ),
                                      Text(
                                        'Lawrence, KS',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      ),
                                      Text(
                                        '< 1 mi',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.blue),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        '11\$-18\$ /hour',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      ),
                                      Text(
                                        '',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      ),
                                      Container(
                                          height: 20,
                                          width: 20,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color: Colors.blue,
                                            ),
                                          ),
                                          child: Center(
                                              child: Icon(
                                            Icons.arrow_forward,
                                            color: Colors.blue,
                                            size: 15,
                                          ))),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  new Container(
                    height: 120,
                    width: MediaQuery.of(context).size.width * 0.86,
                    margin:
                        const EdgeInsets.only(left: 15.0, right: 15, top: 25),
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black54),
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 80.0,
                              width: 50.0,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                                image: DecorationImage(
                                  image: AssetImage('assets/image.jpg'),
                                  fit: BoxFit.cover,
                                ),
                                shape: BoxShape.rectangle,
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        'Chad B',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                      Text(
                                        ' 21 yrs',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      ),
                                      Text(
                                        'Premium',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.blue),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: Colors.blue,
                                      ),
                                      Text(
                                        'Lawrence, KS',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      ),
                                      Text(
                                        '< 1 mi',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.blue),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        '11\$-18\$ /hour',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      ),
                                      Text(
                                        '',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      ),
                                      Container(
                                          height: 20,
                                          width: 20,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color: Colors.blue,
                                            ),
                                          ),
                                          child: Center(
                                              child: Icon(
                                            Icons.arrow_forward,
                                            color: Colors.blue,
                                            size: 15,
                                          ))),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  new Container(
                    height: 120,
                    width: MediaQuery.of(context).size.width * 0.86,
                    margin:
                        const EdgeInsets.only(left: 15.0, right: 15, top: 25),
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black54),
                        borderRadius: BorderRadius.all(Radius.circular(25))),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 80.0,
                              width: 50.0,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                                image: DecorationImage(
                                  image: AssetImage('assets/image.jpg'),
                                  fit: BoxFit.cover,
                                ),
                                shape: BoxShape.rectangle,
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        'Chad B',
                                        style: TextStyle(fontSize: 17),
                                      ),
                                      Text(
                                        ' 21 yrs',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      ),
                                      Text(
                                        'Premium',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.blue),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: Colors.blue,
                                      ),
                                      Text(
                                        'Lawrence, KS',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      ),
                                      Text(
                                        '< 1 mi',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.blue),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Text(
                                        '11\$-18\$ /hour',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      ),
                                      Text(
                                        '',
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.grey),
                                      ),
                                      Container(
                                          height: 20,
                                          width: 20,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color: Colors.blue,
                                            ),
                                          ),
                                          child: Center(
                                              child: Icon(
                                            Icons.arrow_forward,
                                            color: Colors.blue,
                                            size: 15,
                                          ))),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBarWidget(),
    );
  }
}
