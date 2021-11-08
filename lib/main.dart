import 'package:flutter/material.dart';
import 'package:november8/screen/bdjobs.dart';
import 'package:november8/screen/gender.dart';
import 'package:november8/screen/login.dart';
import 'package:november8/screen/login2.dart';
import 'package:november8/screen/phonemail.dart';
import 'package:november8/screen/registration.dart';
import 'package:november8/screen/scroll.dart';
import 'package:november8/screen/scroll2.dart';
import 'package:november8/screen/search.dart';
import 'package:november8/screen/select_skills.dart';
import 'package:november8/screen/user_id.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        ("search"): (context) => Search(),
        ("login"): (context) => Login(),
        ("login2"): (context) => LoginTwo(),
        ("registration"): (context) => Registration(),
        ("selectskill"): (context) => SelectSkills(),
        ("bdjobs"): (context) => BdJobs(),
        ("gender"): (context) => Gender(),
        ("phonemail"): (context) => PhonEmail(),
        ("user_id"): (context) => UserID(),
        ("scroll"): (context) => Scroll(),
        ("scroll2"): (context) => ScrollTwo(),
      },
      home: ScrollTwo(),
    );
  }
}
