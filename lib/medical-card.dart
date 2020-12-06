import 'package:flutter/material.dart';

class MedicalCard extends StatefulWidget {
  String name;
  int index;
  int age;
  String country;
  String homeCountry;
  ///////////////////////////

  //////////

  MedicalCard({
    this.name,
    this.age,
    this.country,
    this.homeCountry,
    this.index,
  });

  @override
  _MedicalCardState createState() => _MedicalCardState();
}

class _MedicalCardState extends State<MedicalCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(children: [
            // name
            TextSpan(
              text: "Name : ",
              style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w900,
                  color: Colors.black),
            ),
            TextSpan(
              text: "${widget.name}",
              style: TextStyle(fontSize: 17, color: Colors.black),
            ),
          ]),
        ),
        RichText(
          text: TextSpan(children: [
            // age
            TextSpan(
              text: "Age : ",
              style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w900,
                  color: Colors.black),
            ),
            TextSpan(
              text: "${widget.age}",
              style: TextStyle(fontSize: 17, color: Colors.black),
            ),
          ]),
        ),
        RichText(
          text: TextSpan(children: [
            // country
            TextSpan(
              text: "Country : ",
              style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w900,
                  color: Colors.black),
            ),
            TextSpan(
              text: "${widget.country}",
              style: TextStyle(fontSize: 17, color: Colors.black),
            ),
          ]),
        ),
        RichText(
          text: TextSpan(children: [
            // home country
            TextSpan(
              text: "Home Country : ",
              style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w900,
                  color: Colors.black),
            ),
            TextSpan(
              text: "${widget.homeCountry}",
              style: TextStyle(fontSize: 17, color: Colors.black),
            ),
          ]),
        ),
//        SizedBox(
//          height: MediaQuery.of(context).size.height * 0.01,
//        ),
      ],
    );
  }
}

class Luggage extends StatefulWidget {
  List luggage = List();
  String luggageName;
  String luggageBrand;
  String luggageCategory;

  Luggage({
    this.luggage,
    this.luggageName,
    this.luggageBrand,
    this.luggageCategory,
  });
  @override
  _LuggageState createState() => _LuggageState();
}

class _LuggageState extends State<Luggage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(children: [
              // home country
              TextSpan(
                text: "Name : ",
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w900,
                    color: Colors.black),
              ),
              TextSpan(
                text: "${widget.luggageName}",
                style: TextStyle(fontSize: 17, color: Colors.black),
              ),
            ]),
          ),
          RichText(
            text: TextSpan(children: [
              // home country
              TextSpan(
                text: "Brand : ",
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w900,
                    color: Colors.black),
              ),
              TextSpan(
                text: "${widget.luggageBrand}",
                style: TextStyle(fontSize: 17, color: Colors.black),
              ),
            ]),
          ),
          RichText(
            text: TextSpan(children: [
              // home country
              TextSpan(
                text: "Category : ",
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w900,
                    color: Colors.black),
              ),
              TextSpan(
                text: "${widget.luggageCategory}",
                style: TextStyle(fontSize: 17, color: Colors.black),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

class Medical extends StatefulWidget {
  List midecals = List();
  String midecalsName;
  int midecalsPrice;
  String midecalsCategory;

  Medical({this.midecalsName, this.midecalsPrice, this.midecalsCategory});

  @override
  _MedicalState createState() => _MedicalState();
}

class _MedicalState extends State<Medical> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(children: [
              // home country
              TextSpan(
                text: "Name : ",
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w900,
                    color: Colors.black),
              ),
              TextSpan(
                text: "${widget.midecalsName}",
                style: TextStyle(fontSize: 17, color: Colors.black),
              ),
            ]),
          ),
          RichText(
            text: TextSpan(children: [
              // home country
              TextSpan(
                text: "Price : ",
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w900,
                    color: Colors.black),
              ),
              TextSpan(
                text: "${widget.midecalsPrice}",
                style: TextStyle(fontSize: 17, color: Colors.black),
              ),
            ]),
          ),
          RichText(
            text: TextSpan(children: [
              // home country
              TextSpan(
                text: "Category : ",
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w900,
                    color: Colors.black),
              ),
              TextSpan(
                text: "${widget.midecalsCategory}",
                style: TextStyle(fontSize: 17, color: Colors.black),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

class Category extends StatefulWidget {
  List category = List();

  Category({this.category});

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Text("${widget.category},");
  }
}
