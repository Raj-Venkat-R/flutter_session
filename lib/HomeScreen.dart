import 'dart:convert';
import 'package:demo/RestaurantDetails.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:flutter/material.dart';
import 'package:lecle_flutter_carousel_pro/lecle_flutter_carousel_pro.dart';
import 'package:http/http.dart' as http;

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  bool colortext = true;
  bool colortext1 = true;
  Map<String, dynamic> swiggyResponseData = {};
  bool loading = true;

  void getSwiggyData() async {
    final apiData = await http.get(
      Uri.parse(
        "https://www.swiggy.com/dapi/restaurants/list/v5?lat=13.08950&lng=80.27390",
      ),
    );
    setState(() {
      swiggyResponseData = json.decode(apiData.body);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getSwiggyData();
  }

  @override
  Widget build(BuildContext context) {
    if (swiggyResponseData.isEmpty ||
        swiggyResponseData["data"] == null ||
        swiggyResponseData["data"]["cards"] == null ||
        swiggyResponseData["data"]["cards"][0] == null ||
        swiggyResponseData["data"]["cards"][0]["card"] == null ||
        swiggyResponseData["data"]["cards"][0]["card"]["card"] == null ||
        swiggyResponseData["data"]["cards"][0]["card"]["card"]["gridElements"] == null ||
        swiggyResponseData["data"]["cards"][0]["card"]["card"]["gridElements"]["infoWithStyle"] == null ||
        swiggyResponseData["data"]["cards"][0]["card"]["card"]["gridElements"]["infoWithStyle"]["info"] == null) {
      return Center(child: CircularProgressIndicator());
    }

    return Scaffold(
      backgroundColor: Colors.teal,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 200,
              width: 800,
              child: Carousel(
                dotIncreasedColor: Colors.tealAccent,
                dotBgColor: Colors.transparent,
                dotColor: Colors.teal,
                dotSize: 4,
                images: [
                  NetworkImage(
                    "https://imgs.search.brave.com/paAQPHx973nVB0RpfIClVCVXGa9Xb0Tp6DYEDqFN_ZE/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJzLmNvbS9p/bWFnZXMvaGQvYXN0/YS1ibGFjay1jbG92/ZXItNGstbGllYmUt/Z3JpbW9pcmUtZGVt/b24teHYwODg0ZWtv/OXh5Y2Ntcy5qcGc",
                  ),
                  NetworkImage(
                    "https://imgs.search.brave.com/250s2d_vD065pIP9V2tEQ5URlI_1gLPeJFmdBNYCY8s/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJzLmNvbS9p/bWFnZXMvaGQvYXN0/YS1ibGFjay1jbG92/ZXItNGstZGFyay1h/bmltZS1xdW90ZS1w/b3N0ZXItZ2xyajVo/YTZ5cGQybTliYS5q/cGc",
                  ),
                ],
              ),
            ),
            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: swiggyResponseData["data"]["cards"][0]["card"]["card"]["gridElements"]["infoWithStyle"]["info"].length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Image.network(
                            "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_288,h_360/${swiggyResponseData["data"]["cards"][0]["card"]["card"]["gridElements"]["infoWithStyle"]["info"][index]["imageId"]}",
                            height: 100,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text("${swiggyResponseData["data"]["cards"][0]["card"]["card"]["gridElements"]["infoWithStyle"]["info"][index]["action"]["text"]}"),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            SizedBox(height: 20),

            Container(
              height: 260,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: swiggyResponseData["data"]["cards"][1]["card"]["card"]["gridElements"]["infoWithStyle"]["restaurants"].length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Restaurantdetails(swiggyResponseData["data"]["cards"][1]["card"]["card"]["gridElements"]["infoWithStyle"]["restaurants"][index]["info"]["id"])));},
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.network(
                              "https://media-assets.swiggy.com/swiggy/image/upload/fl_lossy,f_auto,q_auto,w_660/${swiggyResponseData["data"]["cards"][1]["card"]["card"]["gridElements"]["infoWithStyle"]["restaurants"][index]["info"]["cloudinaryImageId"]}",
                              height: 150),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "${swiggyResponseData["data"]["cards"][1]["card"]["card"]["gridElements"]["infoWithStyle"]["restaurants"][index]["info"]["name"]}",
                            textAlign: TextAlign.left),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            CircleAvatar(
              backgroundImage: NetworkImage(
                "https://imgs.search.brave.com/3GkOFET-dE1IhSM74C1cTz1OhROG6S3LxS0aGo8Wkuc/rs:fit:500:0:1:0/g:ce/aHR0cHM6Ly93YWxs/cGFwZXJjYXZlLmNv/bS93cC93cDQ2MDEz/OTguanBn",
              ),
              radius: 80,
            ),

            Text(
              "Raj Venkat R",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 30,
                letterSpacing: 2,
                color: Colors.white,
              ),
            ),

            Text(
              "FLUTTER DEVELOPER",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                letterSpacing: 3,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 100, right: 100),
              child: Divider(thickness: 3, color: Colors.white),
            ),

            Padding(
              padding: const EdgeInsets.all(25.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    colortext = !colortext;
                  });
                },
                child: Container(
                  color: colortext ? Colors.white : Colors.black,
                  height: 40,
                  child: Row(
                    children: [
                      SizedBox(width: 20),
                      Icon(Icons.email, size: 20, color: Colors.teal),
                      SizedBox(width: 20),
                      Text(
                        "rajvenkat.r361@gmail.com",
                        style: TextStyle(
                          color: colortext ? Colors.black : Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(25.0),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    colortext1 = !colortext1;
                  });
                },
                child: Container(
                  color: colortext1 ? Colors.white : Colors.black,
                  height: 40,
                  child: Row(
                    children: [
                      SizedBox(width: 20),
                      Icon(Icons.phone, size: 20, color: Colors.teal),
                      SizedBox(width: 20),
                      Text(
                        "+91 9360002867",
                        style: TextStyle(
                          color: colortext1 ? Colors.black : Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
