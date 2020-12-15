import 'package:flutter/material.dart';
import '../models/food_model.dart';
import '../widgets/button.dart';

// ignore: must_be_immutable
class FoodDetailsPage extends StatefulWidget {
  final Food food;

  FoodDetailsPage({
    this.food,
  });

  var _mediumSpace = SizedBox(
    height: 20.0,
  );

  var _smallSpace = SizedBox(
    height: 10.0,
  );

  var _largeSpace = SizedBox(
    height: 50.0,
  );

  @override
  // ignore: override_on_non_overriding_member
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: Text(
            "Food Details",
            style: TextStyle(fontSize: 16.0, color: Colors.black),
          ),
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 200.0,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "assets/images/lunch.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
              _mediumSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    food.name,
                    style: TextStyle(fontSize: 16.0, color: Colors.black),
                  ),
                  Text(
                    "lkr ${food.price}",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                ],
              ),
              _mediumSpace,
              Text(
                "Description:",
                style: TextStyle(fontSize: 16.0, color: Colors.black),
              ),
              _smallSpace,
              Text(
                "${food.description}",
                textAlign: TextAlign.justify,
              ),
              _mediumSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(icon: Icon(Icons.add_circle), onPressed: null),
                  SizedBox(
                    width: 15.0,
                  ),
                  Text(
                    "1",
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  IconButton(icon: Icon(Icons.remove_circle), onPressed: null),
                ],
              ),
              _largeSpace,
              Button(
                btnText: "Add to cart",
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<StatefulWidget> createState() => throw UnimplementedError();
}
