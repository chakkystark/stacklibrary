import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:stacklibrary/Controls/Book_Controler.dart';
import 'package:stacklibrary/Models/ModelAllBook.dart';

import 'package:http/http.dart' as http;

class Book_Category extends StatefulWidget {
  const Book_Category({Key ?key}) : super(key: key);

  @override
  _Book_Category createState() => _Book_Category();
}

class _Book_Category extends StateMVC<Book_Category> {
  Future<List<String>> mostTrandingBooks() async {
    var result = await http
        .get(Uri.parse("http://stack.kriyaninfotech.com/api/allbooks"));
    print(json.decode(result.body)["allbooks"]);
    return json.decode(result.body)["allbooks"];
  }

  String book_name(dynamic user) {
    return user['book_name'];
  }

  String author_name(dynamic user) {
    return user['author_name'];
  }

  String book_rating(dynamic user) {
    return user['book_rating'];
  }

  String bookcover_image(dynamic user) {
    return user['bookcoverimage'];
  }

  Future<List<dynamic>> readingBooks() async {
    var result = await http
        .get(Uri.parse("http://stack.kriyaninfotech.com/api/relatedbooks/21"));
    return json.decode(result.body)["relatedbooks"];
  }

  String reading_book_name(dynamic user) {
    return user['book_name'];
  }

  String reading_author_name(dynamic user) {
    return user['author_name'];
  }

  String reading_book_rating(dynamic user) {
    return user['book_rating'];
  }

  Book_Controler _book_controler = Book_Controler();
  ModelAllBook? modelAllBook;

  // Book_Category() : super(Book_Controler());

  @override
  void initState() {
    readingBooks();
    mostTrandingBooks();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Card(
            color: Colors.white70,
            child: Container(
              margin: EdgeInsets.all(5),
              alignment: Alignment.centerLeft,
              child: Text("Most Trading Books",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black)),
            ),
          ),
          Container(
            child: SingleChildScrollView(
                child: Container(
              // width: width * 0.50,
              height: height * 0.40,
              child: FutureBuilder<List<dynamic>>(
                future: mostTrandingBooks(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: snapshot.data.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            margin: EdgeInsets.all(10),
                            width: width * 0.45,
                            height: height * 0.40,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: height * 0.25,
                                  child: Card(
                                      clipBehavior: Clip.antiAlias,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        child: new Image.network(
                                            "http://stack.kriyaninfotech.com/public/coverimages/" +
                                                bookcover_image(
                                                    snapshot.data[index])),
                                        // Image.asset("assets/demo123.png",
                                        //   fit: BoxFit.cover,
                                        // ),
                                      )),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 5, top: 2, right: 5, bottom: 2),
                                  alignment: Alignment.centerLeft,
                                  child: Text(book_name(snapshot.data[index]),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Colors.black),
                                      overflow: TextOverflow.ellipsis),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 5, top: 2, right: 5, bottom: 2),
                                  alignment: Alignment.centerLeft,
                                  child: Text(author_name(snapshot.data[index]),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: Colors.black),
                                      overflow: TextOverflow.ellipsis),
                                ),
                                Container(
                                  margin: EdgeInsets.all(2),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 3,
                                        child: RatingBar.builder(
                                          itemSize: 15,
                                          initialRating: double.parse(
                                              book_rating(
                                                  snapshot.data[index])),
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemPadding: EdgeInsets.symmetric(
                                              horizontal: 4.0),
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
                                            child: Text(
                                                book_rating(
                                                    snapshot.data[index]),
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12,
                                                    color: Colors.black)),
                                          ))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                          /* Container(
                                      child: Column(
                                        children: [
                                          Card(child: Text(
                                              _name(snapshot.data[index]) +
                                                  _name(
                                                      snapshot.data[index])),),
                                          Card(child: Text(
                                              _name(snapshot.data[index]) +
                                                  _name(
                                                      snapshot.data[index])),),
                                          Card(child: Text(
                                              _name(snapshot.data[index])),)
                                        ],
                                      )

                                  )*/
                          // ListTile(
                          //   title: Text(_age(snapshot.data[index])),
                          //   subtitle: Text(_location(snapshot.data[index])),
                          //   trailing: Text(_age(snapshot.data[index])),
                          // )
                          ;
                        });
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                },
              ),
            )),
          ),
          Card(
            color: Colors.white70,
            child: Container(
              margin: EdgeInsets.all(5),
              alignment: Alignment.centerLeft,
              child: Text("Last Week Reading Books",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black)),
            ),
          ),
          Container(
            child: SingleChildScrollView(
                child: Container(
              // width: width * 0.50,
              height: height * 0.40,
              child: FutureBuilder<List<dynamic>>(
                future: readingBooks(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: snapshot.data.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            margin: EdgeInsets.all(10),
                            width: width * 0.45,
                            height: height * 0.40,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: height * 0.25,
                                  child: Card(
                                      clipBehavior: Clip.antiAlias,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        child: new Image.network(
                                            "http://stack.kriyaninfotech.com/public/coverimages/" +
                                                bookcover_image(
                                                    snapshot.data[index])),
                                        // Image.asset("assets/demo123.png",
                                        //   fit: BoxFit.cover,
                                        // ),
                                      )),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 5, top: 2, right: 5, bottom: 2),
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                      reading_book_name(snapshot.data[index]),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Colors.black),
                                      overflow: TextOverflow.ellipsis),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 5, top: 2, right: 5, bottom: 2),
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                      reading_author_name(snapshot.data[index]),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: Colors.black),
                                      overflow: TextOverflow.ellipsis),
                                ),
                                Container(
                                  margin: EdgeInsets.all(2),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 3,
                                        child: RatingBar.builder(
                                          itemSize: 15,
                                          initialRating: double.parse(
                                              reading_book_rating(
                                                  snapshot.data[index])),
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemPadding: EdgeInsets.symmetric(
                                              horizontal: 4.0),
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
                                            child: Text(
                                                reading_book_rating(
                                                    snapshot.data[index]),
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12,
                                                    color: Colors.black)),
                                          ))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                          /* Container(
                                      child: Column(
                                        children: [
                                          Card(child: Text(
                                              _name(snapshot.data[index]) +
                                                  _name(
                                                      snapshot.data[index])),),
                                          Card(child: Text(
                                              _name(snapshot.data[index]) +
                                                  _name(
                                                      snapshot.data[index])),),
                                          Card(child: Text(
                                              _name(snapshot.data[index])),)
                                        ],
                                      )

                                  )*/
                          // ListTile(
                          //   title: Text(_age(snapshot.data[index])),
                          //   subtitle: Text(_location(snapshot.data[index])),
                          //   trailing: Text(_age(snapshot.data[index])),
                          // )
                          ;
                        });
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                },
              ),
            )),
          ),
          Card(
            color: Colors.white70,
            child: Container(
              margin: EdgeInsets.all(5),
              alignment: Alignment.centerLeft,
              child: Text("Saved Books",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black)),
            ),
          ),
          Container(
            child: SingleChildScrollView(
                child: Container(
              // width: width * 0.50,
              height: height * 0.40,
              child: FutureBuilder<List<dynamic>>(
                future: readingBooks(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: snapshot.data.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Container(
                            margin: EdgeInsets.all(10),
                            width: width * 0.45,
                            height: height * 0.40,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: height * 0.25,
                                  child: Card(
                                      clipBehavior: Clip.antiAlias,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        child: new Image.network(
                                            "http://stack.kriyaninfotech.com/public/coverimages/" +
                                                bookcover_image(
                                                    snapshot.data[index])),
                                        // Image.asset("assets/demo123.png",
                                        //   fit: BoxFit.cover,
                                        // ),
                                      )),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 5, top: 2, right: 5, bottom: 2),
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                      reading_book_name(snapshot.data[index]),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Colors.black),
                                      overflow: TextOverflow.ellipsis),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 5, top: 2, right: 5, bottom: 2),
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                      reading_author_name(snapshot.data[index]),
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: Colors.black),
                                      overflow: TextOverflow.ellipsis),
                                ),
                                Container(
                                  margin: EdgeInsets.all(2),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 3,
                                        child: RatingBar.builder(
                                          itemSize: 15,
                                          initialRating: double.parse(
                                              reading_book_rating(
                                                  snapshot.data[index])),
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemPadding: EdgeInsets.symmetric(
                                              horizontal: 4.0),
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
                                            child: Text(
                                                reading_book_rating(
                                                    snapshot.data[index]),
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 12,
                                                    color: Colors.black)),
                                          ))
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                          /* Container(
                                      child: Column(
                                        children: [
                                          Card(child: Text(
                                              _name(snapshot.data[index]) +
                                                  _name(
                                                      snapshot.data[index])),),
                                          Card(child: Text(
                                              _name(snapshot.data[index]) +
                                                  _name(
                                                      snapshot.data[index])),),
                                          Card(child: Text(
                                              _name(snapshot.data[index])),)
                                        ],
                                      )

                                  )*/
                          // ListTile(
                          //   title: Text(_age(snapshot.data[index])),
                          //   subtitle: Text(_location(snapshot.data[index])),
                          //   trailing: Text(_age(snapshot.data[index])),
                          // )
                          ;
                        });
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                },
              ),
            )),
          ),
          Card(
            color: Colors.white70,
            child: Container(
              margin: EdgeInsets.all(5),
              alignment: Alignment.centerLeft,
              child: Text("Original Additions",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black)),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              margin: EdgeInsets.only(left: 5, top: 5, right: 5, bottom: 0),
              height: height * 0.50,
              child: FutureBuilder<List<dynamic>>(
                future: readingBooks(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                        itemCount: snapshot.data.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Container(
                              margin: EdgeInsets.all(10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          child: Card(
                                              clipBehavior: Clip.antiAlias,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                              ),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                child: new Image.network(
                                                    "http://stack.kriyaninfotech.com/public/coverimages/" +
                                                        bookcover_image(snapshot
                                                            .data[index])),
                                                // Image.asset("assets/demo123.png",
                                                //   fit: BoxFit.cover,
                                                // ),
                                              )),
                                        ),
                                      ),
                                      Expanded(
                                          flex: 2,
                                          child: Column(
                                            children: [
                                              Container(
                                                margin: EdgeInsets.only(
                                                    left: 5,
                                                    top: 2,
                                                    right: 5,
                                                    bottom: 2),
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                    reading_book_name(
                                                        snapshot.data[index]),
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 14,
                                                        color: Colors.black),
                                                    overflow:
                                                        TextOverflow.ellipsis),
                                              ),
                                              Container(
                                                margin: EdgeInsets.only(
                                                    left: 5,
                                                    top: 2,
                                                    right: 5,
                                                    bottom: 2),
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                    reading_author_name(
                                                        snapshot.data[index]),
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 12,
                                                        color: Colors.black),
                                                    overflow:
                                                        TextOverflow.ellipsis),
                                              ),
                                              Container(
                                                margin: EdgeInsets.all(2),
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      flex: 3,
                                                      child: RatingBar.builder(
                                                        itemSize: 15,
                                                        initialRating: double.parse(
                                                            reading_book_rating(
                                                                snapshot.data[
                                                                    index])),
                                                        minRating: 1,
                                                        direction:
                                                            Axis.horizontal,
                                                        allowHalfRating: true,
                                                        itemCount: 5,
                                                        itemPadding: EdgeInsets
                                                            .symmetric(
                                                                horizontal:
                                                                    4.0),
                                                        itemBuilder:
                                                            (context, _) =>
                                                                Icon(
                                                          Icons.star,
                                                          color: Colors.amber,
                                                        ),
                                                        onRatingUpdate:
                                                            (rating) {
                                                          print(rating);
                                                        },
                                                      ),
                                                    ),
                                                    Expanded(
                                                        flex: 1,
                                                        child: Container(
                                                          margin:
                                                              EdgeInsets.all(5),
                                                          alignment: Alignment
                                                              .centerRight,
                                                          child: Text(
                                                              reading_book_rating(
                                                                  snapshot.data[
                                                                      index]),
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize: 12,
                                                                  color: Colors
                                                                      .black)),
                                                        ))
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ))
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                          /* Container(
                                      child: Column(
                                        children: [
                                          Card(child: Text(
                                              _name(snapshot.data[index]) +
                                                  _name(
                                                      snapshot.data[index])),),
                                          Card(child: Text(
                                              _name(snapshot.data[index]) +
                                                  _name(
                                                      snapshot.data[index])),),
                                          Card(child: Text(
                                              _name(snapshot.data[index])),)
                                        ],
                                      )

                                  )*/
                          // ListTile(
                          //   title: Text(_age(snapshot.data[index])),
                          //   subtitle: Text(_location(snapshot.data[index])),
                          //   trailing: Text(_age(snapshot.data[index])),
                          // )
                          ;
                        });
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                },
              ),
            ),
            // Container(
            //   child: Column(
            //     children: [
            //       Card(
            //         color: Colors.white,
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(10.0),
            //         ),
            //         child: Container(
            //           child: Row(
            //             mainAxisAlignment: MainAxisAlignment.start,
            //             children: [
            //               Expanded(
            //                 flex: 3,
            //                 child: Container(
            //                   height: 190,
            //                   child: Card(
            //                       color: Colors.green,
            //                       shape: RoundedRectangleBorder(
            //                         borderRadius: BorderRadius.circular(10.0),
            //                       ),
            //                       child: Image.asset('assets/demo123.png')),
            //                 ),
            //               ),
            //               Expanded(
            //                 flex: 5,
            //                 child: Container(
            //                     height: 150,
            //                     alignment: Alignment.topRight,
            //                     child: Column(
            //                       mainAxisAlignment: MainAxisAlignment.start,
            //                       children: [
            //                         Container(
            //                           alignment: Alignment.topLeft,
            //                           margin: EdgeInsets.only(
            //                               left: 5, top: 2, right: 5, bottom: 2),
            //                           child: Text("Siva Kumar",
            //                               style: TextStyle(
            //                                   fontWeight: FontWeight.bold,
            //                                   fontSize: 18,
            //                                   color: Colors.black)),
            //                         ),
            //                         Container(
            //                           alignment: Alignment.topLeft,
            //                           margin: EdgeInsets.only(
            //                               left: 5, top: 2, right: 5, bottom: 2),
            //                           child: Text("Most Trading Books",
            //                               style: TextStyle(
            //                                   fontWeight: FontWeight.bold,
            //                                   fontSize: 12,
            //                                   color: Colors.black)),
            //                         ),
            //                         Container(
            //                           alignment: Alignment.topLeft,
            //                           margin: EdgeInsets.all(2),
            //                           child: Row(
            //                             children: [
            //                               Expanded(
            //                                 flex: 3,
            //                                 child: RatingBar.builder(
            //                                   itemSize: 15,
            //                                   initialRating: 3,
            //                                   minRating: 1,
            //                                   direction: Axis.horizontal,
            //                                   allowHalfRating: true,
            //                                   itemCount: 5,
            //                                   itemPadding: EdgeInsets.symmetric(
            //                                       horizontal: 4.0),
            //                                   itemBuilder: (context, _) => Icon(
            //                                     Icons.star,
            //                                     color: Colors.amber,
            //                                   ),
            //                                   onRatingUpdate: (rating) {
            //                                     print(rating);
            //                                   },
            //                                 ),
            //                               ),
            //                               Expanded(
            //                                   flex: 1,
            //                                   child: Container(
            //                                     margin: EdgeInsets.all(5),
            //                                     alignment:
            //                                         Alignment.centerRight,
            //                                     child: Text("4.5",
            //                                         style: TextStyle(
            //                                             fontWeight:
            //                                                 FontWeight.bold,
            //                                             fontSize: 12,
            //                                             color: Colors.black)),
            //                                   ))
            //                             ],
            //                           ),
            //                         ),
            //                       ],
            //                     )),
            //               )
            //             ],
            //           ),
            //         ),
            //       ),
            //       Card(
            //         color: Colors.white,
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(10.0),
            //         ),
            //         child: Container(
            //           child: Row(
            //             mainAxisAlignment: MainAxisAlignment.start,
            //             children: [
            //               Expanded(
            //                 flex: 3,
            //                 child: Container(
            //                   height: 190,
            //                   child: Card(
            //                       color: Colors.green,
            //                       shape: RoundedRectangleBorder(
            //                         borderRadius: BorderRadius.circular(10.0),
            //                       ),
            //                       child: Image.asset('assets/demo123.png')),
            //                 ),
            //               ),
            //               Expanded(
            //                 flex: 5,
            //                 child: Container(
            //                     height: 150,
            //                     alignment: Alignment.topRight,
            //                     child: Column(
            //                       mainAxisAlignment: MainAxisAlignment.start,
            //                       children: [
            //                         Container(
            //                           alignment: Alignment.topLeft,
            //                           margin: EdgeInsets.only(
            //                               left: 5, top: 2, right: 5, bottom: 2),
            //                           child: Text("Siva Kumar",
            //                               style: TextStyle(
            //                                   fontWeight: FontWeight.bold,
            //                                   fontSize: 18,
            //                                   color: Colors.black)),
            //                         ),
            //                         Container(
            //                           alignment: Alignment.topLeft,
            //                           margin: EdgeInsets.only(
            //                               left: 5, top: 2, right: 5, bottom: 2),
            //                           child: Text("Most Trading Books",
            //                               style: TextStyle(
            //                                   fontWeight: FontWeight.bold,
            //                                   fontSize: 12,
            //                                   color: Colors.black)),
            //                         ),
            //                         Container(
            //                           alignment: Alignment.topLeft,
            //                           margin: EdgeInsets.all(2),
            //                           child: Row(
            //                             children: [
            //                               Expanded(
            //                                 flex: 3,
            //                                 child: RatingBar.builder(
            //                                   itemSize: 15,
            //                                   initialRating: 3,
            //                                   minRating: 1,
            //                                   direction: Axis.horizontal,
            //                                   allowHalfRating: true,
            //                                   itemCount: 5,
            //                                   itemPadding: EdgeInsets.symmetric(
            //                                       horizontal: 4.0),
            //                                   itemBuilder: (context, _) => Icon(
            //                                     Icons.star,
            //                                     color: Colors.amber,
            //                                   ),
            //                                   onRatingUpdate: (rating) {
            //                                     print(rating);
            //                                   },
            //                                 ),
            //                               ),
            //                               Expanded(
            //                                   flex: 1,
            //                                   child: Container(
            //                                     margin: EdgeInsets.all(5),
            //                                     alignment:
            //                                         Alignment.centerRight,
            //                                     child: Text("4.5",
            //                                         style: TextStyle(
            //                                             fontWeight:
            //                                                 FontWeight.bold,
            //                                             fontSize: 12,
            //                                             color: Colors.black)),
            //                                   ))
            //                             ],
            //                           ),
            //                         ),
            //                       ],
            //                     )),
            //               )
            //             ],
            //           ),
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          ),
        ],
      )),
    );
  }
}
