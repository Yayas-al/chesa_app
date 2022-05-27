import 'package:chesa_app/ui/pages/chesa.dart';
import 'package:chesa_app/ui/pages/dasboard.dart';
import 'package:chesa_app/ui/pages/get_started_page.dart';
import 'package:flutter/material.dart';
import 'ui/pages/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/get-started': (context) => GetStartedPage(),
        '/dashboard': (context) => dasboard(),
        '/chesa': (context) => chesa(),
      },
    );
  }
}
