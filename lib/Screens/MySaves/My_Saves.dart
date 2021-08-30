import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacklibrary/Screens/MySaves/Mydownloadsfiles.dart';
import 'package:stacklibrary/Screens/MySaves/Mysavefiles.dart';

class My_Saves extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar:
        TabBar(
          indicatorSize: TabBarIndicatorSize.tab,
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.grey,
          labelStyle:TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
          tabs: [
               Tab(text: "Save", ),
              Tab(text: "Downloads", ),
          ],
        ),
        body: TabBarView(
          children: [
            Mysavefiles(),
            Mydownloadsfiles(),
          ],
        ),
      ),
    );
  }
}