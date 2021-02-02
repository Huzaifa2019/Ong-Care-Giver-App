import 'dart:async';

import 'package:flutter/material.dart';

class BottomNavBarWidget extends StatefulWidget {
  @override
  _BottomNavBarWidgetState createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;
    bool itemcolor = false;
    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;

        if (_selectedIndex == 0) {
          itemcolor = true;
        } else if (_selectedIndex == 1) {
          itemcolor = true;
        } else if (_selectedIndex == 2) {
          itemcolor = true;
        } else if (_selectedIndex == 3) {
          itemcolor = true;
        }
      });
    }

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(30), topLeft: Radius.circular(35)),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35.0),
          topRight: Radius.circular(35.0),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              title: Text('Home', style: TextStyle(color: Colors.white)),
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
            ),
            BottomNavigationBarItem(
              title: Text('Inbox', style: TextStyle(color: Colors.white)),
              icon: Icon(
                Icons.chat_bubble_outline,
                color: Colors.white,
              ),
            ),
            BottomNavigationBarItem(
              title: Text('Jobs', style: TextStyle(color: Colors.white)),
              icon: Icon(
                Icons.work,
                color: Colors.white,
              ),
            ),
            BottomNavigationBarItem(
                title: Text('Profile', style: TextStyle(color: Colors.white)),
                icon: Icon(
                  Icons.person_outline,
                  color: Colors.white,
                )),
          ],
          currentIndex: _selectedIndex,
          backgroundColor: Color(0xffF4A7AF),
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
