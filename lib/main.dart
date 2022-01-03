import 'dart:math';
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
  HomePage(this.authorIndex, {Key? key}) : super(key: key);
  final authorIndex;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var rnd = new Random();

  var quotes1 = <String>[
    'Go, Web! Fly! Up, Up, And Away, Web! Shazam! Go! Go! Go, Web, Go! Tally Ho!',
    'Im gonna put some dirt in your eye',
    'Look at little Goblin junior. Gonna cry?',
    'Pizza time',
    'This is my gift, my curse. Who am I? Im Spiderman-Man',
  ];

  var quotes2 = <String>[
    'I run into dilemmas all the time... This is not one of them. You disgust me. And deserve to die.',
    "Evil is evil. Lesser, greater, middling... Makes no difference. The degree is arbitrary. The definition's blurred. If I'm to choose between one evil and another... I'd rather not choose at all.",
    'Beware of an old man in a profession where men usually die young.',
    'Mistakes are also important to me. I don’t cross them out of my life, or memory. And I never blame others for them.',
    'Damn, Youre Ugly.',
  ];

  var quotes3 = <String>[
    'Never trust anyone too much, remember the devil was once an angel.',
    "You think something like that would hurt, after all I've been through?",
    'If you were to write a story with me in the lead role, it would certainly be... a tragedy.',
    "The pain you feel today will be the strength you'll have tomorrow.",
    "Sometimes good people make bad choices. It doesn’t mean they are bad people. It means they’re human.",
  ];

  var quotes4 = <String>[
    "You’re going to be all right. You just stumbled over a stone in the road. It means nothing. Your goal lies far beyond this. Doesn’t it? I’m sure you’ll overcome this. You’ll walk again… soon.",
    "Even if we painstakingly piece together something lost, it doesn’t mean things will ever go back to how they were.",
    'When you meet your God tell him to leave me alone.',
    "If you’re alone… if it’s just your life, you can use it however you please/ Wear yourself out, get cut to ribbons, doesn’t matter. But when there’s two, the blade grows heavy. Fighting like death doesn’t concern you becomes a thing of the past. It’s no longer just you. I threw away my way of life, relied on the strength of others, and somehow pushed on.",
    "In the end the winner is still the last man standing.",
  ];

  var quotes5 = <String>[
    "Do not mistake my silence for lack of grief.",
    "Don't be sorry, be better.",
    "Boy!",
    "The cycle ends here. We must be better than this.",
    "This path you walk... vengeance. You will find no peace. I know.",
  ];
  String text = "Generate a quote!";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ExpansionTile(
            title: Text("1. Peter Parker"),
            children: [
              Align(
                child: ElevatedButton(
                  child: Text('Generate Quote!'),
                  onPressed: () {
                    setState(() {
                      int quoteIndex = rnd.nextInt(quotes1.length);
                      text = quotes1[quoteIndex];
                      text = '"$text" \n- Peter Parker';
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF010100),
                  ),
                ),
              )
            ],
          ),
          ExpansionTile(
            title: Text("2. Geralt of Rivia"),
            children: [
              Align(
                child: ElevatedButton(
                  child: Text('Generate Quote!'),
                  onPressed: () {
                    setState(() {
                      int quoteIndex = rnd.nextInt(quotes2.length);
                      text = quotes2[quoteIndex];
                      text = '"$text" \n- Geralt of Rivia';
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF010100),
                  ),
                ),
              )
            ],
          ),
          ExpansionTile(
            title: Text("3. Kaneki"),
            children: [
              Align(
                child: ElevatedButton(
                  child: Text('Generate Quote!'),
                  onPressed: () {
                    setState(() {
                      int quoteIndex = rnd.nextInt(quotes2.length);
                      text = quotes3[quoteIndex];
                      text = '"$text" \n- Ken Kaneki';
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF010100),
                  ),
                ),
              )
            ],
          ),
          ExpansionTile(
            title: Text("4. Guts"),
            children: [
              Align(
                child: ElevatedButton(
                  child: Text('Generate Quote!'),
                  onPressed: () {
                    setState(() {
                      int quoteIndex = rnd.nextInt(quotes2.length);
                      text = quotes4[quoteIndex];
                      text = '"$text" \n- Guts';
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF010100),
                  ),
                ),
              )
            ],
          ),
          ExpansionTile(
            title: Text("5. Kratos"),
            children: [
              Align(
                child: ElevatedButton(
                  child: Text('Generate Quote!'),
                  onPressed: () {
                    setState(() {
                      int quoteIndex = rnd.nextInt(quotes2.length);
                      text = quotes5[quoteIndex];
                      text = '"$text" \n- Kratos';
                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF010100),
                  ),
                ),
              )
            ],
          ),
          Card(
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: ListTile(
              title: Center(child: Text(text)),
            ),
          ),
        ],
      ),
    );
  }
}
