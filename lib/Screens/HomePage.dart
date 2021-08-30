
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacklibrary/Screens/Account/Accounts.dart';
import 'package:stacklibrary/Screens/Notification/Notifications.dart';
import 'package:stacklibrary/Screens/Search/Search.dart';

import 'Category/Audio__Category.dart';
import 'Category/Book_Category.dart';
import 'Category/Documents_Category.dart';
import 'Category/Magazines_Category.dart';
import 'Category/Podcasts_Category.dart';
import 'Category/Videos_Category.dart';
import 'Category/All.dart';
import 'HomePages/Home_Category.dart';
import 'MySaves/My_Saves.dart';
import 'Requsts/Requsts.dart';

class Home_page extends StatefulWidget {
   Home_page({Key? key}) : super(key: key);

  @override
  _home_pageState createState() => _home_pageState();
}

class _home_pageState extends State<Home_page> {
  int _selectedIndex = 0;
  late PageController _pageController;
  List<Widget> _widgetOptions = [
    Screen1(),
    Requsts(),
    My_Saves(),
    Accounts(),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _selectedIndex);
  }

  /*@override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment
              .spaceBetween, // place the logout at the end of the drawer
          children: <Widget>[
            Flexible(
              child: ListView(
                shrinkWrap: true,
                children: <Widget>[
                  UserAccountsDrawerHeader(
                    decoration: BoxDecoration(),
                    accountName: Padding(
                      child: Row(
                        children: <Widget>[
                          Text("Siva kumar",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.black)),
                        ],
                      ),
                      padding: EdgeInsets.only(top: 10),
                    ),
                    accountEmail: Text("Mobile Application Devoloper",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.black)),
                    currentAccountPicture: CircleAvatar(
                      backgroundColor:
                          Theme.of(context).platform == TargetPlatform.iOS
                              ? Colors.white
                              : Colors.white,
                      child: Image.asset(
                        "assets/st_logo.png",
                        width: 47.0,
                      ),
                    ),
                  ),
                  Divider(
                    height: 1,
                    thickness: 1,
                  ),
                  ListTile(
                    dense: true,
                    title: Text("Home"),
                    leading: Image.asset("assets/home.png"),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home_page()),
                      );
                    },
                  ),
                  Divider(
                    height: 1,
                    thickness: 1,
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Search()),
                      );
                    },
                    dense: true,
                    title: Text("Browse Books"),
                    leading: Icon(
                      Icons.search,
                    ),
                  ),
                  Divider(
                    height: 1,
                    thickness: 1,
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => My_Saves()),
                      );
                    },
                    dense: true,
                    title: Text("My Save"),
                    leading: Image.asset("assets/save.png"),
                  ),
                  Divider(
                    height: 1,
                    thickness: 1,
                  ),
                  ListTile(
                    dense: true,
                    title: Text("Request a Book"),
                    leading: Image.asset("assets/Book.png"),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Requsts()),
                      );
                    },
                  ),
                  Divider(
                    height: 1,
                    thickness: 1,
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Accounts()),
                      );
                    },
                    dense: true,
                    title: Text("Account "),
                    leading: Image.asset(
                      "assets/users.png",
                    ),
                  ),
                  Divider(
                    height: 1,
                    thickness: 1,
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home_page()),
                      );
                    },
                    dense: true,
                    title: Text("Reading"),
                    leading: Icon(
                      Icons.menu_book,
                    ),
                  ),
                  Divider(
                    height: 1,
                    thickness: 1,
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    dense: true,
                    title: Text("Logout"),
                    trailing: Text(
                      "Version 0.0",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    leading: Icon(
                      Icons.logout,
                      size: 16,
                    ),
                  ),
                  Divider(
                    height: 1,
                    thickness: 1,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        // leading: new IconButton(
        //   icon: new Icon(
        //     Icons.menu,
        //     color: Colors.white,
        //   ),
        // ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Search()));
            },
          ),
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => Notifications()));
            },
          ),
        ],
        title: Text('Home Page'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: onTabTapped,
        iconSize: 20,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        selectedLabelStyle: TextStyle(color: Colors.blue),
        unselectedLabelStyle: TextStyle(color: Colors.grey),
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/home.png",
                color: Colors.blue,
                width: 24.0,
              ),
              // activeIcon:new Image.asset('assets/save.png')
              title: Text("Home")),
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/Book.png",
                width: 24.0,
              ),
              title: Text("Requst Book")),
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/save.png",
                width: 24.0,
              ),
              title: Text("My Saves")),
          BottomNavigationBarItem(
              icon: Image.asset(
                "assets/users.png",
                width: 24.0,
              ),
              title: Text("Profile")),
        ],
      ),
      body: PageView(
        children: _widgetOptions,
        onPageChanged: onPageChanged,
        controller: _pageController,
      ),
    );
  }

  void onPageChanged(int page) {
    setState(() {
      this._selectedIndex = page;
    });
  }

  void onTabTapped(int index) {
    this._pageController.animateToPage(index,
        duration: const Duration(milliseconds: 500), curve: Curves.easeInOut);
  }
}

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: new PreferredSize(
          preferredSize: new Size(40.0, 90.0),
          child: new Container(
            width: 60.0,
            child: new TabBar(
              isScrollable: true,
              tabs: [
                Container(
                  margin: EdgeInsets.all(5),
                  child: Column(
                    children: [
                      Container(
                          height: 60,
                          width: 60,
                          child: Card(
                              color: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Card(
                                margin: EdgeInsets.all(1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                child: Image.asset(
                                  "assets/file/re_all.jpeg",
                                  width: 47.0,
                                ),
                              ))),
                      Container(
                        child: Text("All",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Colors.black)),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  child: Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        child: Card(
                          color: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Card(
                            margin: EdgeInsets.all(1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Image.asset(
                              "assets/file/re_book.jpeg",
                              width: 47.0,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Text("Books",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Colors.black)),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  child: Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        child: Card(
                            color: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Card(
                              margin: EdgeInsets.all(1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Image.asset(
                                "assets/file/re_mac.jpeg",
                                width: 47.0,
                              ),
                            )),
                      ),
                      Container(
                        child: Text("Magazines",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Colors.black)),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  child: Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        child: Card(
                            color: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Card(
                              margin: EdgeInsets.all(1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Image.asset(
                                "assets/file/re_audio.jpeg",
                                width: 47.0,
                              ),
                            )),
                      ),
                      Container(
                        child: Text("Audiobooks",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Colors.black)),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  child: Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        child: Card(
                            color: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Card(
                              margin: EdgeInsets.all(1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Image.asset(
                                "assets/file/re_por.jpeg",
                                width: 47.0,
                              ),
                            )),
                      ),
                      Container(
                        child: Text("Podcasts",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Colors.black)),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  child: Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        child: Card(
                            color: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Card(
                              margin: EdgeInsets.all(1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Image.asset(
                                "assets/file/re_doc.jpeg",
                                width: 47.0,
                              ),
                            )),
                      ),
                      Container(
                        child: Text("Documents",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Colors.black)),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  child: Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        child: Card(
                            color: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Card(
                              margin: EdgeInsets.all(1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Icon(
                                Icons.video_call,
                                color: Colors.black,
                              ),
                            )),
                      ),
                      Container(
                        child: Text("Videos",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Colors.black)),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  child: Column(
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        child: Card(
                            color: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Card(
                              margin: EdgeInsets.all(1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              child: Icon(
                                Icons.save,
                                color: Colors.black,
                              ),
                            )),
                      ),
                      Container(
                        child: Text(" My Saved Files ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Colors.black)),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            All(),
            Book_Category(),
            Magazines_Category(),
            Audio_Category(),
            Podcasts_Category(),
            Documents_Category(),
            Video_Category(),
            My_Saves(),
          ],
        ),
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepOrange,
      child: Center(child: Text("Screen 3")),
    );
  }
}
