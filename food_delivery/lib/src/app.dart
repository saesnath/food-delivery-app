import 'package:flutter/material.dart';
import 'package:food_delivery/src/pages/sigin_page.dart';
//import 'package:food_delivery/src/admin/pages/add_food_item.dart';
import 'package:food_delivery/src/scoped-model/main_model.dart';

import 'package:scoped_model/scoped_model.dart';
import 'screens/main_screen.dart';

class App extends StatelessWidget {
  final MainModel mainModel = MainModel();

  @override
  Widget build(BuildContext context) {
    return ScopedModel<MainModel>(
      model: mainModel,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Food Delivery App",
        theme: ThemeData(primaryColor: Colors.redAccent),
        routes: {
          "/": (BuildContext context) => SignInPage(),
          "/mainscreen": (BuildContext context) => MainScreen(
                model: mainModel,
              ),
        },
      ),
    );
  }
}
