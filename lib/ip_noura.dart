import 'dart:io';

import 'package:device_info/device_info.dart';
import 'package:device_info_example/page/bug_info_page.dart';
import 'package:device_info_example/page/package_info_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

}
class  IPData extends StatelessWidget {
  static final String title =
      '${Platform.isAndroid ? 'Android' : 'iOS'} Device Info';
  @override
 Widget build(BuildContext context) => Scaffold(
        
        body: BugInfoPage(),
        );
      
      
  
}