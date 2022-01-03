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
        body: SafeArea(child: HomePage(context)),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  final author;
  HomePage(this.author, {Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> quotes = [
    "Quote 1",
    "Quote 2",
    "Quote 3",
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SingleChildScrollView(
        child: Column(
          children: [
            buildButton("name", 1),
            buildButton("name", 1),
            buildButton("name", 1),
            buildButton("name", 1),
            buildButton("name", 1),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: ListTile(
                title: Center(
                    child: Text(
                        '"The greatest glory in living lies not in never falling, but in rising every time we fall."')),
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}

Widget buildButton(name, order) => ExpansionTile(
      title: Text("$order. " + name),
      children: [
        ListTile(
          trailing: Text('Generate Quote!'),
          onTap: () => print("quote should appear"),
        )
      ],
    );

void PickQuote(String author, BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Text("data"),
    ),
  );
}
