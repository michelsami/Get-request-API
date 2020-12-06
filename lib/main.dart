import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:render_api_medical/medical-card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medical API',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String name;
  List midecals = List();
  int age;
  String country;
  List luggage = List();
  String homeCountry;
  int luggageNum;
  List category = List();
  String OneCategory;
  String set;

  getFromRestApi() async {
    Response response = await Dio()
        .get("https://run.mocky.io/v3/701ff6f4-0181-47fe-9461-473f6d0aec92");

    name = response.data['name'];
    age = response.data['age'];
    country = response.data['country'];
    homeCountry = response.data["home_country"];
    midecals = response.data["midecals"];
    //luggageNum = response.data.luggage.length;

    luggage = response.data["luggage"];
    category = response.data["midecals"][0]["category"];

    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getFromRestApi();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text("API"),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MedicalCard(
                name: name,
                age: age,
                country: country,
                homeCountry: homeCountry,
                // index: index,
                //luggageName: luggage[1]["name"],
                //luggageBrand: luggage[1]["brand"],
                //luggageCategory: luggage[1]["category"],
                // midecalsName: midecals[0]["name"],
                //midecalsPrice: midecals[0]["name"],
                //midecalsCategory: midecals[0]["name"],
              ),
              Center(
                child: Text(
                  "Luggage",
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                  ),
                ),
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                primary: false,
                shrinkWrap: true,
                itemCount: luggage.length,
                itemBuilder: (context, index) {
                  return Luggage(
                    luggageName: luggage[index]["name"],
                    luggageBrand: luggage[index]["brand"],
                    luggageCategory: luggage[index]["category"],
                  );
                },
              ),
              Center(
                child: Text(
                  "Midecals",
                  style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w900,
                      fontSize: 20),
                ),
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                primary: false,
                shrinkWrap: true,
                itemCount: midecals.length,
                itemBuilder: (context, index) {
                  return Medical(
                    midecalsName: midecals[index]["name"],
                    midecalsPrice: midecals[index]["price"],
                    midecalsCategory: midecals[index]["category"].join(" , "),
                  );
                },
              ),
            ],
          ),
        )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
