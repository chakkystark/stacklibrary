import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:stacklibrary/Models/ModelAllBook.dart';
import 'dart:convert';

Future<List<ModelAllBook>> getAllBooksAPI1() async {
  print("ok book_repository");
  var data = await http.get(Uri.parse("http://stack.kriyaninfotech.com/api/allbooks"), headers: {"Accept": "application/json",});
  print(data.body);
  print(data.statusCode);
  // if(data.statusCode==201) {
    var jsonData = json.decode(data.body);
    var jsons=jsonData.toString();
    print("Dataa    :   "+jsons);
    return (ContentType.json as List).map((e) => ModelAllBook.fromJSON(e)).toList();
  // }

}

