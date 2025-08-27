import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/provider/count_provider.dart';
import 'package:provider_tutorial/provider/fabList_provider.dart';
import 'package:provider_tutorial/provider/slider_provider.dart';
import 'package:provider_tutorial/sreen/faburite_app%20project.dart';
import 'package:provider_tutorial/sreen/home_screen.dart';
import 'package:provider_tutorial/sreen/home_screen_2.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CountProvider()),
        ChangeNotifierProvider(create: (context) => sliderProvider()),
        ChangeNotifierProvider(create: (context) => favListProvider(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: favApp(),
      ),
    );
  }
}
