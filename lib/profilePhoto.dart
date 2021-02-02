import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ong/premiumpackage.dart';
import 'package:image_picker/image_picker.dart';
import 'billinginfo.dart';

class ProfilePhotoScreen extends StatefulWidget {
  @override
  _StandardImageListState createState() => _StandardImageListState();
}

class _StandardImageListState extends State<ProfilePhotoScreen> {

  File _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
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
            _image != null?IconButton(
                icon: Icon(
                  Icons.arrow_forward,
                  color: Colors.black,
                  size: 28,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => PackagePremiumPage()));
                }):Text(""),
          ],
          title: Column(
            children: [
              SizedBox(height: 25),
              Text(
                'Profile Photo',
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
                        "You are more likely to get a job if you",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "upload your Profile Photo.",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                  ),
                  Stack(
                    children: <Widget>[
                      GestureDetector(
                        child: Container(
                          width: 180,
                          height: 180,
                          decoration: new BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: _image == null ? Center(
                            child: Image.asset(
                              'assets/Icon feather-camera.png',
                              height: 40,
                              width: 40,
                            ),
                          ):ClipOval(child: Image.file(_image,fit: BoxFit.cover,),),
                        ),
                        onTap: (){
                          getImage();
                        },
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        left: 78,
                        height: 35,
                        child: FloatingActionButton(
                          backgroundColor: Color(0xffF4A7AF),
                          child: Icon(Icons.add),
                          onPressed: () {
                            getImage();
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
