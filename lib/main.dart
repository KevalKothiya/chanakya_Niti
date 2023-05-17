import 'package:departure/controller/controller.dart';
import 'package:departure/screens/details_page.dart';
import 'package:departure/screens/home_page.dart';
import 'package:departure/screens/niti_page.dart';
import 'package:departure/screens/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Shloka_Provider(),),
      ],
      builder: (context, _) {
        return Sizer(
          builder: (context, _, __) => MaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: 'SplashPage',
            routes: {
              '/': (context) => HomePage(),
              'DetailsPage' : (context) => DetailsPage(),
              'NitiPage' : (context) => NitiPage(),
              'SplashPage' : (context) => SplashPage(),
            },
          ),
        );
      },
    ),
  );
}
