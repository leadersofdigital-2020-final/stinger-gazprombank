import 'package:flutter/material.dart';
import 'pages/onboarding.dart';
import 'singleton.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
        ChangeNotifierProvider<Singleton>(create: (context) => Singleton()),
    ],
    child: MaterialApp(
      title: 'Flutter Onboarding UI',
      debugShowCheckedModeBanner: false,
      home: Onboarding(),
    )
    );
  }
}