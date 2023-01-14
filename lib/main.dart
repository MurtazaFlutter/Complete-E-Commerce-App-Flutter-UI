import 'package:ecommerce_app/screens/splashScreen/splash_screen.dart';
import 'package:ecommerce_app/utils/constants.dart';
import 'package:ecommerce_app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "Muli",
        appBarTheme: AppBarTheme(
            color: Colors.white,
            elevation: 0,
            systemOverlayStyle: SystemUiOverlayStyle.light,
            iconTheme: const IconThemeData(
              color: Colors.black,
            ),
            toolbarTextStyle: const TextTheme(
                headline6: TextStyle(
              color: Color(0xFF8B8b8B),
              fontSize: 18,
            )).bodyText2,
            titleTextStyle: const TextTheme(
                headline6: TextStyle(
              color: Color(0xFF8B8b8B),
              fontSize: 18,
            )).headline6),
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: kTextColor),
          bodyText2: TextStyle(color: kTextColor),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
