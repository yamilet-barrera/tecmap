import 'package:flutter/material.dart';
import 'package:tecmap/pages/maping.dart';
import 'package:tecmap/pages/principal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tecmap',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => Principal(),
        '/maping': (context) => Maping()
      },
    );
  }
}
