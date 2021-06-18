import 'dart:io';

import 'package:device_info/device_info.dart';
import 'package:device_info_example/page/bug_info_page.dart';
import 'package:device_info_example/page/package_info_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'ip_noura.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title =
      '${Platform.isAndroid ? 'Android' : 'iOS'} Device Info';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.pink),
        home: IPData(),
      );
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  

  @override
  Widget build(BuildContext context) => Scaffold(
        
       // body: IPData(),
      );

 
  }

