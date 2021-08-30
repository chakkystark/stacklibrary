
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Mysavefiles extends StatefulWidget {
  const Mysavefiles({Key ?key}) : super(key: key);

  @override
  _MydownloadsfilesState createState() => _MydownloadsfilesState();
}

class _MydownloadsfilesState extends State<Mysavefiles> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Card(
              color: Colors.blue[100],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child:Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(flex: 3,child: Container(
                      height: 150,
                      child: Card(
                          color: Colors.blue[100],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Image.asset('assets/demo123.png')),
                    ),),
                    Expanded(flex: 5,child:  Container(
                        height: 150,
                        alignment: Alignment.topRight,
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(left: 5,top: 2,right: 5,bottom: 2),
                              child: Text("Siva Kumar",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.black)),
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(left: 5,top: 2,right: 5,bottom: 2),

                              child: Text("Most Trading Books",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: Colors.black)),
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.all(2),
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: RatingBar.builder(
                                      itemSize: 15,
                                      initialRating: 3,
                                      minRating: 1,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemPadding:
                                      EdgeInsets.symmetric(horizontal: 4.0),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
                                    ),
                                  ),
                                  Expanded(
                                      flex: 1,
                                      child: Container(
                                        margin: EdgeInsets.all(5),
                                        alignment: Alignment.centerRight,
                                        child:Image.asset("assets/save.png"),
                                      ))
                                ],
                              ),
                            ),
                          ],
                        )
                    ),),
                  ],
                ),
              ),),
          ],
        ),
      ),


    );
  }
}
