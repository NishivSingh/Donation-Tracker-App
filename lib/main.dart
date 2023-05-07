import 'package:flutter/material.dart';
import 'all_creator_screen.dart';
import 'creator.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CreatorsProvider()),
      ],
      child: MaterialApp(
        title: 'Creator Donation App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
        home: const AllCreatorsScreen(),
      ),
    );
  }
}
