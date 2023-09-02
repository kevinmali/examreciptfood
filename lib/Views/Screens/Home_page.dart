import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../Model/Recipes_model.dart';

class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  String? data;

  List<resipes> recipe = [];

  Future<void> loadJSON() async {
    data = await rootBundle.loadString("Asset/Images/resipt.json");

    setState(() {
      List decodeList = jsonDecode(data!);

      recipe = decodeList.map((e) => resipes.frommap(data: e)).toList();
    });
  }

  @override
  void initState() {
    super.initState();
    loadJSON();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount: recipe.length,
          itemBuilder: (context, i) => Container(
            height: 800,
            width: double.infinity,
            margin: EdgeInsets.all(15),
            child: Column(
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  child: Image.asset(
                    "${recipe[i].images}",
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 28.0),
                  child: Text(
                    "${recipe[i].name}",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                Center(
                  child: Text(
                    "${recipe[i].steps}",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
        // Image.asset("${recipe[i].images}"),
      ),
    );
  }
}
