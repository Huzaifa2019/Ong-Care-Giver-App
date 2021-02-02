//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:ong/BabySitter/babysitterdetails.dart';
import 'package:ong/Erands/erandsdetails.dart';
import 'package:ong/HouseKeeper/housedetails.dart';
import 'package:ong/Nanny/nannysitter.dart';
import 'package:ong/Petsitter/petsitterdetails.dart';
import 'package:ong/Senior%20Care/seniordetails.dart';
import 'package:ong/SpecialNeeds/specialneedsDetails.dart';
import 'package:ong/Tutors/tutordetails.dart';
import 'package:get/get.dart';
import 'package:ong/createaccount.dart';

class Controller extends GetxController {
  var show = false.obs;
  showt() => show.value = true;
  showf() => show.value = false;
}

class JobSelectPage extends StatefulWidget {
  @override
  _StandardImageListState createState() => _StandardImageListState();
}

class _StandardImageListState extends State<JobSelectPage> {
  final Controller c = Get.put(Controller());

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
          actions: [
            /*show == true? IconButton(
                    icon: Icon(
                      Icons.arrow_forward,
                      color: Colors.black,
                      size: 28,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => CreateAccountScreen()));
                    }):Text(""),*/
            Obx(() => c.show == true
                ? IconButton(
                    icon: Icon(
                      Icons.arrow_forward,
                      color: Colors.black,
                      size: 28,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => CreateAccountScreen()));
                    })
                : Text("")),
          ],
          title: Column(
            children: [
              SizedBox(height: 25),
              Text(
                'Select Job',
                style: TextStyle(color: Colors.black, fontSize: 24),
              ),
            ],
          ),
          centerTitle: true,
        ),
        body: new Container(
          decoration: BoxDecoration(color: Colors.white),
          child: MyGridView(),
        ),
      ),
    );
  }
}

List gname = [
  "Nanny",
  "Baby Sitter",
  "Pet Sitter",
  "House Keeper",
  "Senior care",
  "Tutor",
  "Errands & odd",
  "Special needs"
];
List gicon = [
  "assets/Icon awesome-baby-carriage.png",
  "assets/Icon awesome-baby.png",
  "assets/Icon material-pets.png",
  "assets/Icon awesome-home-1.png",
  "assets/Icon awesome-hand-holding.png",
  "assets/Icon awesome-chalkboard-teacher.png",
  "assets/Icon material-group-work.png",
  "assets/Icon awesome-heart.png"
];
List gselect = ["0", "0", "0", "0", "0", "0", "0", "0"];

class MyGridView extends StatefulWidget {
  @override
  _MyGridViewState createState() => _MyGridViewState();
}

class _MyGridViewState extends State<MyGridView> {
  final Controller c = Get.find();
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        primary: true,
        physics: BouncingScrollPhysics(),
        padding: const EdgeInsets.all(1.0),
        crossAxisCount: 2,
        childAspectRatio: 1,
        mainAxisSpacing: 3.0,
        crossAxisSpacing: 3.0,
        children: List.generate(
            gname.length,
            (int index) =>
                getStructuredGridCell(gname[index], gicon[index], index)));

    /// ------------------------------------
    /// Main content gridView.count
    /// ------------------------------------
    /*return GridView.count(
      primary: true,
      physics: BouncingScrollPhysics(),
      padding: const EdgeInsets.all(1.0),
      crossAxisCount: 2,
      childAspectRatio: 1,
      mainAxisSpacing: 3.0,
      crossAxisSpacing: 3.0,
      children: <Widget>[
        getStructuredGridCell("Nanny", "assets/Icon awesome-baby-carriage.png"),
        getStructuredGridCell("BabySitter", "assets/Icon awesome-baby.png"),
        getStructuredGridCell("PetSitter", "assets/Icon material-pets.png"),
        getStructuredGridCell("House Keeper", "assets/Icon awesome-home-1.png"),
        getStructuredGridCell(
            "Senior care\n provider", "assets/Icon awesome-hand-holding.png"),
        getStructuredGridCell(
            "Tutor", "assets/Icon awesome-chalkboard-teacher.png"),
        getStructuredGridCell("Errands & odd \n jobs provider",
            "assets/Icon material-group-work.png"),
        getStructuredGridCell(
            "Special needs\ncaregiver", "assets/Icon awesome-heart.png"),
      ],
    );*/
  }

  /// ------------------------------------
  /// GestureDetector widget item in grid
  /// ------------------------------------
  GestureDetector getStructuredGridCell(name, image, index) {
    return new GestureDetector(
      onTap: () {
        setState(() {
          if (gselect[index] == "0") {
            gselect[index] = "1";
            c.showt();
          } else {
            gselect[index] = "0";
            if (gselect.contains("1")) {
              c.showt();
            } else {
              c.showf();
            }
          }
        });
      },
      /*onTap: (){
        setState(() {
          if (gselect[index] == "0") {
            gselect[index] = "1";
            c.showt();
          }
        });
      },
      onDoubleTap: (){
        setState(() {
          gselect[index] = "0";
          if (gselect.contains("1")) {
            c.showt();
          } else {
            c.showf();
          }
        });
      },*/
      child: Card(
        /// ------------------------------------
        /// RoundedRectangleBorder widget item for grid          /// ------------------------------------          ///
        color: gselect[index] == "1" ? Colors.blue : Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: new BorderSide(color: Colors.blue, width: 1.0),
        ),

        margin: EdgeInsets.only(top: 15, left: 15, right: 15),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(image),
                  colorFilter: ColorFilter.linearToSrgbGamma()),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(child: Text('')),
                Flexible(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                          color: gselect[index] == "1"
                              ? Colors.white
                              : Colors.black,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
