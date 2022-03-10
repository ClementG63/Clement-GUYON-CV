import 'package:clement_guyon/config.dart';
import 'package:clement_guyon/screen/contact_page.dart';
import 'package:clement_guyon/screen/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
    currentTheme.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(),
        '/contact': (context) => const ContactPage(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Clément Guyon',
      themeMode: currentTheme.currentTheme(),
      darkTheme: ThemeData(
        backgroundColor: Colors.black,
        primaryColorLight: Colors.white,
        primaryColorDark: const Color.fromARGB(255, 28, 28, 30),
        appBarTheme: const AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle.dark,
        ),
      ),
      theme: ThemeData(
        backgroundColor: const Color.fromARGB(255, 242, 242, 242),
        primaryColorLight: Colors.black,
        primaryColorDark: Colors.white,
      ),
    );
  }
}

