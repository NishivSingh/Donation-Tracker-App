import 'package:flutter/material.dart';
import 'all_creator_screen.dart';
import 'creator.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CreatorsProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
        home: AllCreatorsScreen(),
      ),
    );
  }
}
