import 'package:flutter/material.dart';
import 'package:ong/workavailabel.dart';

class SetupProfilePage extends StatefulWidget {
  @override
  _StandardImageListState createState() => _StandardImageListState();
}

class _StandardImageListState extends State<SetupProfilePage> {
  RangeValues values = RangeValues(1, 100);
  RangeLabels labels = RangeLabels('1', "100");
  bool checkBoxValue = false;
  bool checkBoxValues = false;

  void _showModalSheetMultiple() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Container(
              height: 310,
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
                          'Have a Transport',
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
                          'Non-Smoker',
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
                          'Credit Card',
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
                          'Professional Pay',
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

  void _showModalSheetMies() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return SingleChildScrollView(
            child: Container(
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
                            'Less than 5',
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
                            '10',
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
                            '15',
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
                            '20',
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
                            '30',
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
                            '40',
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
                            '50+',
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
                )),
          );
        });
  }
  TextEditingController rminController = new TextEditingController();
  TextEditingController rmaxController = new TextEditingController();
  TextEditingController ominController = new TextEditingController();
  TextEditingController omaxController = new TextEditingController();
  int rmin = 0;
  int rmax = 0;
  int omin = 0;
  int omax = 0;
  void _showModalSheetRecurring() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Container(
              height: MediaQuery.of(context).size.height / 1,
              decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(40.0),
                topRight: const Radius.circular(40.0),
              )),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Hours per week',
                            style: TextStyle(fontSize: 18),
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
                              child: Text('Minimum')),
                          SizedBox(width: 10.0),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 15.0, right: 15.0, top: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            // optional flex property if flex is 1 because the default flex is 1
                            //flex: 1,
                            child: TextField(
                              controller: rminController,
                              readOnly: true,
                              decoration: InputDecoration(
                                  suffixIcon: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      IconButton(
                                        splashRadius: 30,
                                        icon: Icon(
                                          Icons.arrow_drop_up,
                                          size: 30,
                                          color: Color(0xffF4A7AF),
                                        ),
                                        onPressed: (){
                                          setState(() {
                                            if(rmin < rmax-1)
                                            {
                                              rmin++;
                                            }
                                            rminController.text = rmin.toString();
                                          });
                                        },
                                      ),
                                      IconButton(
                                        splashRadius: 30,
                                        icon: Icon(
                                          Icons.arrow_drop_down,
                                          size: 30,
                                          color: Color(0xffF4A7AF),
                                        ),
                                        onPressed: (){
                                          setState(() {
                                            if(rmin > 0)
                                              {
                                                rmin--;
                                              }
                                            rminController.text = rmin.toString();
                                          });
                                        },
                                      )
                                    ],
                                  ),
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
                              child: Text('Maximum')),
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
                              controller: rmaxController,
                              decoration: InputDecoration(
                                  suffixIcon: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      IconButton(
                                        splashRadius: 30,
                                        icon: Icon(
                                          Icons.arrow_drop_up,
                                          size: 30,
                                          color: Color(0xffF4A7AF),
                                        ),
                                        onPressed: (){
                                          setState(() {
                                            if(rmax < 70)
                                            {
                                              rmax++;
                                            }
                                            rmaxController.text = rmax.toString();
                                          });
                                        },
                                      ),
                                      IconButton(
                                        splashRadius: 30,
                                        icon: Icon(
                                          Icons.arrow_drop_down,
                                          size: 30,
                                          color: Color(0xffF4A7AF),
                                        ),
                                        onPressed: (){
                                          setState(() {
                                            if(rmax > 0)
                                            {
                                              rmax--;
                                            }
                                            rmaxController.text = rmax.toString();
                                          });
                                        },
                                      )
                                    ],
                                  ),
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
                ),
              ));
        });
  }

  void _showModalSheetOneTime() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return Container(
              height: MediaQuery.of(context).size.height / 1,
              decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.only(
                topLeft: const Radius.circular(40.0),
                topRight: const Radius.circular(40.0),
              )),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Hours per job',
                            style: TextStyle(fontSize: 18),
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
                              child: Text('Minimum')),
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
                              controller: ominController,
                              readOnly: true,
                              decoration: InputDecoration(
                                  suffixIcon: Column(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      IconButton(
                                        splashRadius: 30,
                                        icon: Icon(
                                          Icons.arrow_drop_up,
                                          size: 30,
                                          color: Color(0xffF4A7AF),
                                        ),
                                        onPressed: (){
                                          setState(() {
                                            if(omin < omax-1)
                                            {
                                              omin++;
                                            }
                                            ominController.text = omin.toString();
                                          });
                                        },
                                      ),
                                      IconButton(
                                        splashRadius: 30,
                                        icon: Icon(
                                          Icons.arrow_drop_down,
                                          size: 30,
                                          color: Color(0xffF4A7AF),
                                        ),
                                        onPressed: (){
                                          setState(() {
                                            if(omin > 0)
                                            {
                                              omin--;
                                            }
                                            ominController.text = omin.toString();
                                          });
                                        },
                                      )
                                    ],
                                  ),
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
                              child: Text('Maximum')),
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
                              controller: omaxController,
                              decoration: InputDecoration(
                                  suffixIcon: Column(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                    children: [
                                      IconButton(
                                        splashRadius: 30,
                                        icon: Icon(
                                          Icons.arrow_drop_up,
                                          size: 30,
                                          color: Color(0xffF4A7AF),
                                        ),
                                        onPressed: (){
                                          setState(() {
                                            if(omax < 10)
                                            {
                                              omax++;
                                            }
                                            omaxController.text = omax.toString();
                                          });
                                        },
                                      ),
                                      IconButton(
                                        splashRadius: 30,
                                        icon: Icon(
                                          Icons.arrow_drop_down,
                                          size: 30,
                                          color: Color(0xffF4A7AF),
                                        ),
                                        onPressed: (){
                                          setState(() {
                                            if(omax > 0)
                                            {
                                              omax--;
                                            }
                                            omaxController.text = omax.toString();
                                          });
                                        },
                                      )
                                    ],
                                  ),
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
                ),
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
                'Set up Profile',
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "select Multiple Option That apply to",
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "you, to make it easier for us to assign a",
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "job suitable to you.",
                        style: TextStyle(fontSize: 17),
                      ),
                    ],
                  ),
                  SizedBox(height: 45),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 25.0, right: 25.0, top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                            // optional flex property if flex is 1 because the default flex is 1
                            flex: 1,
                            child: Text(
                              'Select Multiple',
                              style: TextStyle(fontSize: 20),
                            )),
                        SizedBox(width: 10.0),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 25.0, right: 25, top: 10),
                    child: GestureDetector(
                      onTap: _showModalSheetMultiple,
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
                        const EdgeInsets.only(left: 25.0, right: 25.0, top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                            // optional flex property if flex is 1 because the default flex is 1
                            flex: 1,
                            child: Text(
                              'Miles willing to travel',
                              style: TextStyle(fontSize: 20),
                            )),
                        SizedBox(width: 10.0),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 25.0, right: 25, top: 10),
                    child: GestureDetector(
                      onTap: _showModalSheetMies,
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
                  SizedBox(
                    height: 15,
                  ),
                  
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 25.0, right: 25.0, top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                            // optional flex property if flex is 1 because the default flex is 1
                            flex: 1,
                            child: Text(
                              'Hourly Rate',
                              style: TextStyle(fontSize: 20),
                            )),
                        SizedBox(width: 10.0),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:10.0),
                        child: Text("\$${values.start.round()}",
                        style: TextStyle(
                          //fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical:15),
                          child: RangeSlider(
                              divisions: 100,
                              activeColor: Color(0xffF4A7AF),
                              inactiveColor: Colors.grey,
                              min: 1,
                              max: 100,
                              values: values,
                              labels: labels,
                              onChanged: (value) {
                                setState(() {
                                  values = value;
                                  labels = RangeLabels(
                                      "${value.start.toInt().toString()}\$",
                                      "${value.end.toInt().toString()}\$");
                                });
                              }),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right:10.0),
                        child: Text("\$${values.end.round()}",
                          style: TextStyle(
                            //fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 25.0, right: 25.0, top: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Expanded(
                            // optional flex property if flex is 1 because the default flex is 1
                            flex: 1,
                            child: Text(
                              'Job reference',
                              style: TextStyle(fontSize: 20),
                            )),
                        SizedBox(width: 10.0),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Recurring job',
                          style: TextStyle(fontSize: 18),
                        ),
                        new Checkbox(
                            value: checkBoxValue,
                            activeColor: Colors.green,
                            onChanged: (bool newValue) {
                              setState(() {
                                checkBoxValue = newValue;
                                if (checkBoxValue) {
                                  _showModalSheetRecurring();
                                }
                              });
                            }),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'One-time Job',
                          style: TextStyle(fontSize: 18),
                        ),
                        new Checkbox(
                            value: checkBoxValues,
                            activeColor: Colors.green,
                            onChanged: (bool newValue) {
                              setState(() {
                                checkBoxValues = newValue;
                                if (checkBoxValues) {
                                  _showModalSheetOneTime();
                                }
                              });
                            }),
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
                      builder: (context) => AvailabelWorkScreen()));
            },
            child: new Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Center(
                  child: Text(
                "Continue",
                style: TextStyle(fontSize: 20, color: Colors.white),
              )),
            ),
          ),
        ),
      ),
    );
  }
}
