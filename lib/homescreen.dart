import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Homescreen extends StatefulWidget {
  const Homescreen({super.key, required this.title});
  final String title;

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  String mainTitle ="";


  void _getData() async {
    String urlString = "https://jsonplaceholder.typicode.com/albums/1/";

    Uri uri =Uri.parse(urlString);

    var response = await http.get(uri);
    if (response.statusCode == 200) {
      var responseDecoded =jsonDecode(response.body) as Map <String, dynamic>;
      String title = responseDecoded["title"];
      print("Result: " + title);
      setState(() {
        mainTitle =title;
      });

    } else {}

    print("Response Code" + response.statusCode.toString());
    
  }
  @override
  void initState() {
    _getData();
  
  }

  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
    );
   
  }

}