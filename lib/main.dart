import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final appBarColor = const Color(0xFFefbb5c);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFFdb7617),
        scaffoldBackgroundColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Quote Generator"),
          backgroundColor: appBarColor,
        ),
        body: SafeArea(child: HomePage()),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> authorNames = ["Name1", "Name2", "Name3", "Name4", "Name5"];
    return ListView(
      children: List.generate(
        5,
        (index) => ListTile(
          title: Text("$index. " + authorNames[index]),
          dense: true,
          onTap: () => buildText(context),
        ),
      ),
    );
  }
}
