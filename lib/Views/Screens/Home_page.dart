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
          itemBuilder: (context, i) => Card(
            color: Colors.white,
            margin: EdgeInsets.all(5),
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("${recipe[i].images}".toString()),
                    ),
                  ),
                ),
                Center(
                  child: ListTile(
                    leading: Text("${recipe[i].name}"),
                    subtitle: Text("${recipe[i].steps}"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
