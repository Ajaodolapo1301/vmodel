import 'package:flutter/material.dart';

import 'features/screens/home/home.dart';
// import 'package:vmodel_reviews/features/screens/media_options.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Home()

        //ActionSheetApp()

        //),

        //JobMarkets()

        //MediaOption(),
        //ReviewPage(),
        );
  }
}
