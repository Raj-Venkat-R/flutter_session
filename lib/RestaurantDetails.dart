import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Restaurantdetails extends StatefulWidget {
  final String restApi;
  const Restaurantdetails(this.restApi);

  @override
  State<Restaurantdetails> createState() => _RestaurantdetailsState();
}

class _RestaurantdetailsState extends State<Restaurantdetails> {
  Map<String, dynamic> restData = {};

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getRest();
  }

  void getRest() async {
    final restData1 = await http.get(
      Uri.parse(
        "https://www.swiggy.com/dapi/menu/pl?page-type=REGULAR_MENU&complete-menu=true&lat=13.08950&lng=80.27390&restaurantId=708880&catalog_qa=undefined&submitAction=ENTER",
      ),
    );
    setState(() {
      restData = json.decode(restData1.body);
    });
  }

  @override
  Widget build(BuildContext context) {
    if (restData.isEmpty ||
        restData["data"] == null ||
        restData["data"]["cards"] == null ||
        restData["data"]["cards"][2] == null ||
        restData["data"]["cards"][2]["card"] == null ||
        restData["data"]["cards"][2]["card"]["card"] == null ||
        restData["data"]["cards"][2]["card"]["card"]["info"] == null ||
        restData["data"]["cards"][2]["card"]["card"]["info"]["name"] == null) {
      return Center(child: CircularProgressIndicator());
    }
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
                child: Text(
                  "${restData["data"]["cards"][2]["card"]["card"]["info"]["name"]}",
                ),
              ),
    );
  }
}
