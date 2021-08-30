import 'package:flutter/material.dart';

class Accounts extends StatefulWidget {
  const Accounts({Key? key}) : super(key: key);

  @override
  _AccountsState createState() => _AccountsState();
}

class _AccountsState extends State<Accounts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          child: Column(
            children: [
              Container(
                  height: 150,
                  width: 150,
                  child: Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(75.0),
                      ),
                      child: Card(
                        color: Colors.white,
                        margin: EdgeInsets.all(1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(75.0),
                        ),
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          child: Image.asset(
                            "assets/st_logo.png",
                            width: 100.0,
                          ),
                        ),
                      ))),
              Container(
                margin: EdgeInsets.all(5),
                child: Text("Siva kumar",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black)),
              ),
              Container(
                height: 40,
                child: Row(
                  children: [
                    Expanded(

                      flex: 2,
                      child: Container(margin: EdgeInsets.only(left: 20,top: 5,right: 5,bottom: 5),
                          child: Text("Sivakumar@gmail.com  ",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                              color: Colors.black)),)

                    ),
                    Expanded(flex: 1,child: Container(
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.all(5),
                        child: Icon(Icons.email)
                    ),
                       )
                  ],
                ),
              ),
              Divider(
                height: 1,
                thickness: 1,
              ),
              Container(
                height: 40,
                child: Row(
                  children: [
                    Expanded(

                        flex: 2,
                        child: Container(margin: EdgeInsets.only(left: 20,top: 5,right: 5,bottom: 5),
                          child: Text("9951755530",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.black)),)

                    ),
                    Expanded(flex: 1,child: Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.all(5),
                        child: Icon(Icons.phone)
                    ),
                    )
                  ],
                ),
              ),
              Divider(
                height: 1,
                thickness: 1,
              ),
              Container(
                height: 40,
                child: Row(
                  children: [
                    Expanded(

                        flex: 2,
                        child: Container(margin: EdgeInsets.only(left: 20,top: 5,right: 5,bottom: 5),
                          child: Text("Request/Tickets",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.black)),)

                    ),
                    Expanded(flex: 1,child: Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.all(5),
                        child: Icon(Icons.turned_in_outlined)
                    ),
                    )
                  ],
                ),
              ),
              Divider(
                height: 1,
                thickness: 1,
              ),
              Container(
                height: 40,
                child: Row(
                  children: [
                    Expanded(

                        flex: 2,
                        child: Container(margin: EdgeInsets.only(left: 20,top: 5,right: 5,bottom: 5),
                          child: Text("Download and My save",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.black)),)

                    ),
                    Expanded(flex: 1,child: Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.all(5),
                        child: Icon(Icons.save)
                    ),
                    )
                  ],
                ),
              ),
              Divider(
                height: 1,
                thickness: 1,
              ),
              Container(
                height: 40,
                child: Row(
                  children: [
                    Expanded(

                        flex: 2,
                        child: Container(margin: EdgeInsets.only(left: 20,top: 5,right: 5,bottom: 5),
                          child: Text("Audio Player Settings",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.black)),)

                    ),
                    Expanded(flex: 1,child: Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.all(5),
                        child: Icon(Icons.audiotrack)
                    ),
                    )
                  ],
                ),
              ),
              Divider(
                height: 1,
                thickness: 1,
              ),
              Container(
                height: 40,
                child: Row(
                  children: [
                    Expanded(

                        flex: 2,
                        child: Container(margin: EdgeInsets.only(left: 20,top: 5,right: 5,bottom: 5),
                          child: Text("Language",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.black)),)

                    ),
                    Expanded(flex: 1,child: Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.all(5),
                        child: Text("English",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Colors.black))
                    ),
                    )
                  ],
                ),
              ),
              Divider(
                height: 1,
                thickness: 1,
              ),
              Container(
                height: 40,
                child: Row(
                  children: [
                    Expanded(

                        flex: 2,
                        child: Container(margin: EdgeInsets.only(left: 20,top: 5,right: 5,bottom: 5),
                          child: Text("Bookmarks",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.black)),)

                    ),
                    Expanded(flex: 1,child: Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.all(5),
                        child: Icon(Icons.turned_in_not)
                    ),
                    )
                  ],
                ),
              ),
              Divider(
                height: 1,
                thickness: 1,
              ),
              Container(
                height: 40,
                child: Row(
                  children: [
                    Expanded(

                        flex: 2,
                        child: Container(margin: EdgeInsets.only(left: 20,top: 5,right: 5,bottom: 5),
                          child: Text("Notification Settings",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.black)),)

                    ),
                    Expanded(flex: 1,child: Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.all(5),
                        child: Icon(Icons.toggle_off_outlined)
                    ),
                    )
                  ],
                ),
              ),
              Divider(
                height: 1,
                thickness: 1,
              ),
              Container(
                height: 40,
                child: Row(
                  children: [
                    Expanded(

                        flex: 2,
                        child: Container(margin: EdgeInsets.only(left: 20,top: 5,right: 5,bottom: 5),
                          child: Text("Enable/Disable Voice Commands(Siri/Google)",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.black)),)

                    ),
                    Expanded(flex: 1,child: Container(
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.all(5),
                        child: Icon(Icons.toggle_off_outlined)
                    ),
                    )
                  ],
                ),
              ),
              Divider(
                height: 1,
                thickness: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
