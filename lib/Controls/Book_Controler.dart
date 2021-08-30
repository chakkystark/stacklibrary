
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:stacklibrary/Models/ModelAllBook.dart';
import 'package:stacklibrary/Repository/All_Repository.dart';

class Book_Controler extends ControllerMVC {
  List<ModelAllBook> newBookModelList = [];


  late ModelAllBook modelAllBook;


  NewsController() {
    this.modelAllBook =ModelAllBook();
  }

  var globalkey = GlobalKey<ScaffoldState>();


  getAllBooks() async {
    print("ok book_controler");
    try {
      newBookModelList = await getAllBooksAPI1();
      setState(() {
        getAllBooks();
      });
    } catch (e) {
      print("Dataa    :   +e");
    }
  }



}