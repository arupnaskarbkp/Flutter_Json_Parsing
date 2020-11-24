import 'package:flutter/material.dart';
import 'HomePage.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

void main() async {
  List listof =  await getAllData();
  runApp(MyApp(listof));
}

class MyApp extends StatelessWidget {

  List listof;
  MyApp(this.listof);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(listof),
    );
  }
}

// ignore: missing_return
Future<List> getAllData () async{
  var api = "https://jsonplaceholder.typicode.com/users";
  var data = await http.get(api);
  var jsondata = json.decode(data.body);
  return jsondata;
}


