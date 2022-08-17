import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_7/pages/add/homepage2.dart';
import 'package:flutter_application_7/pages/add/today1.dart';
import 'package:flutter_application_7/pages/history/history1.dart';

class homepage1 extends StatefulWidget {
  homepage1({Key? key}) : super(key: key);

  @override
  State<homepage1> createState() => _homepage1State();
}

class _homepage1State extends State<homepage1> {
  int _Currentindex = 0;

  final _pages = [const today1(), history1()];

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: SafeArea(
            top: false,
            child: Scaffold(
                floatingActionButton: FloatingActionButton(
                    onPressed: _medicalinformation,
                    child: Icon(CupertinoIcons.add)),
                floatingActionButtonLocation:
                    FloatingActionButtonLocation.centerDocked,
                appBar: AppBar(),
                body: _pages[_Currentindex],
                bottomNavigationBar: BottomAppBar(
                    elevation: 0,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          CupertinoButton(
                              child: Icon(CupertinoIcons.check_mark),
                              onPressed: () => _onCurrentpage(0)),
                          CupertinoButton(
                              child: Icon(CupertinoIcons.text_badge_checkmark),
                              onPressed: () => _onCurrentpage(1)),
                        ])))));
  }

  void _onCurrentpage(int pageindex) {
    setState(() {
      _Currentindex = pageindex;
    });
  }

  void _medicalinformation() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const homepage2(),
        ));
  }
}
