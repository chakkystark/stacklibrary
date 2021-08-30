import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacklibrary/Demo/Demo.dart';
import 'package:stacklibrary/Screens/Forgot_Screen/Forgot_Page.dart';
import 'package:stacklibrary/Screens/HomePage.dart';
import 'package:stacklibrary/Screens/HomePages/Select_Interests.dart';

class Login_Main extends StatefulWidget {
  const Login_Main({Key ?key}) : super(key: key);

  @override
  _Login_MainState createState() => _Login_MainState();
}

class _Login_MainState extends State<Login_Main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                    width: 200,
                    height: 150,
                    /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                    child: Image.asset('assets/st_logo.png')),
              ),
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Enter valid email id as abc@gmail.com'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(

                obscureText: true,
                decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter secure password'),
              ),
            ),
            Container(margin: EdgeInsets.all(10),
              alignment: Alignment.centerRight,
             child: FlatButton(

                onPressed: (){
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => Home_page()));
                },
                child: Text(
                  'Forgot Password',
                  style: TextStyle(color: Colors.blue, fontSize: 15),
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.all(5),
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(10)),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => Home_page()));
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 130,
            ),

          ],
        ),
      ),
    );
  }
}
