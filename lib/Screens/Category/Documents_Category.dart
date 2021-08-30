
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Documents_Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Card(
                color: Colors.white70,
                child: Container(
                  margin: EdgeInsets.all(5),
                  alignment: Alignment.centerLeft,
                  child: Text("Most Trading Documents",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black)),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: 250,
                  margin: EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 250,
                        width: 195,
                        alignment: Alignment.centerLeft,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 200,
                              width: 195,
                              child: Card(
                                  color: Colors.green,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Image.asset('assets/demo123.png')),
                            ),
                            Container(
                              height: 30,
                              width: 195,
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      margin: EdgeInsets.all(5),
                                      alignment: Alignment.centerLeft,
                                      child: Text("Siva Kumar",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.black)),
                                    ),
                                  ),
                                  Expanded(
                                      flex: 1,
                                      child: Container(
                                        alignment: Alignment.centerRight,
                                        child: Icon(
                                          Icons.favorite,
                                          color: Colors.red,
                                        ),
                                      ))
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(2),
                              alignment: Alignment.centerLeft,
                              child: Text("Most Trading Documents",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: Colors.black)),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 250,
                        width: 195,
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: [
                            Container(
                              height: 200,
                              width: 195,
                              child: Card(
                                  color: Colors.green,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Image.asset('assets/demo123.png')),
                            ),
                            Container(
                              height: 30,
                              width: 195,
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      margin: EdgeInsets.all(5),
                                      alignment: Alignment.centerLeft,
                                      child: Text("Siva Kumar",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.black)),
                                    ),
                                  ),
                                  Expanded(
                                      flex: 1,
                                      child: Container(
                                        alignment: Alignment.centerRight,
                                        child: Icon(
                                          Icons.favorite,
                                          color: Colors.red,
                                        ),
                                      ))
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(2),
                              alignment: Alignment.centerLeft,
                              child: Text("Most Trading Documents",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: Colors.black)),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 250,
                        width: 195,
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: [
                            Container(
                              height: 200,
                              width: 195,
                              child: Card(
                                  color: Colors.green,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Image.asset('assets/demo123.png')),
                            ),
                            Container(
                              height: 30,
                              width: 195,
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      margin: EdgeInsets.all(5),
                                      alignment: Alignment.centerLeft,
                                      child: Text("Siva Kumar",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.black)),
                                    ),
                                  ),
                                  Expanded(
                                      flex: 1,
                                      child: Container(
                                        alignment: Alignment.centerRight,
                                        child: Icon(
                                          Icons.favorite,
                                          color: Colors.red,
                                        ),
                                      ))
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(2),
                              alignment: Alignment.centerLeft,
                              child: Text("Most Trading Books",
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
              Card(
                color: Colors.white70,
                child: Container(
                  margin: EdgeInsets.all(5),
                  alignment: Alignment.centerLeft,
                  child: Text("Last Week Reading Documents",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.black)),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  height: 250,
                  margin: EdgeInsets.all(5),
                  child: Row(
                    children: [
                      Container(
                        height: 250,
                        width: 190,
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: [
                            Container(
                              height: 200,
                              width: 190,
                              child: Card(
                                  color: Colors.green,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Image.asset('assets/demo123.png')),
                            ),
                            Container(
                              height: 30,
                              width: 190,
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      margin: EdgeInsets.all(5),
                                      alignment: Alignment.centerLeft,
                                      child: Text("Siva Kumar",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.black)),
                                    ),
                                  ),
                                  Expanded(
                                      flex: 1,
                                      child: Container(
                                        alignment: Alignment.centerRight,
                                        child: Icon(
                                          Icons.favorite,
                                          color: Colors.red,
                                        ),
                                      ))
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(2),
                              alignment: Alignment.centerLeft,
                              child: Text("Most Trading Books",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: Colors.black)),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 250,
                        width: 190,
                        alignment: Alignment.centerLeft,
                        child: Column(
                          children: [
                            Container(
                              height: 200,
                              width: 190,
                              child: Card(
                                  color: Colors.green,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Image.asset('assets/demo123.png')),
                            ),
                            Container(
                              height: 30,
                              width: 190,
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      margin: EdgeInsets.all(5),
                                      alignment: Alignment.centerLeft,
                                      child: Text("Siva Kumar",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                              color: Colors.black)),
                                    ),
                                  ),
                                  Expanded(
                                      flex: 1,
                                      child: Container(
                                        alignment: Alignment.centerRight,
                                        child: Icon(
                                          Icons.favorite,
                                          color: Colors.red,
                                        ),
                                      ))
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(2),
                              alignment: Alignment.centerLeft,
                              child: Text("Most Trading Books",
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
            ],
          )),
    );
  }
}
