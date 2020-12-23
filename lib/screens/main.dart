import 'package:flutter/material.dart';
import 'package:flutterproject/blocs/provider.dart';
import 'package:flutterproject/screens/login/WelcomePage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Provider(
    child : MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(
    primarySwatch: Colors.blue,
    textTheme:GoogleFonts.latoTextTheme(textTheme).copyWith(
      body1: GoogleFonts.montserrat(textStyle: textTheme.body1),
    ),
    ),
    debugShowCheckedModeBanner: false,
    home: WelcomePage(),
    )
    );

  }
}
