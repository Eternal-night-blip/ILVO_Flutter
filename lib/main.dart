import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ilvo_flutter/feedback_page.dart';
import 'package:ilvo_flutter/user_center_page.dart';
import 'package:ilvo_flutter/sentence_appreciation_page.dart';
import 'package:ilvo_flutter/words_today_to_learn_page.dart';

void main() {
  runApp(const ILVO());
}

class ILVO extends StatelessWidget {
  const ILVO({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ILVO',
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const HomePage(title: 'ILVO Home Page'),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget page;
    switch (selectedIndex) {
      case 0:
        page = GeneratorPage();
        break;
      case 1:
        page = FeedBackPage();
        break;
      case 2:
        page = UserCenterPage();
        break;
      case 3:
        page = GlobalFeedBackPage();
      default:
        throw UnimplementedError("no widget for $selectedIndex");
    }
    return Scaffold(
      //backgroundColor: Colors.transparent,
      resizeToAvoidBottomInset: false,
      body: Center(child: page),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "主页"),
          BottomNavigationBarItem(icon: Icon(Icons.feedback), label: "反馈页"),
          BottomNavigationBarItem(icon: Icon(Icons.face), label: "个人中心"),
        ],
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}

class GeneratorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/background.png'), fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(20, 100, 20, 100),
            child: CupertinoSearchTextField(padding: EdgeInsets.all(20.0)),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SentenceAppreciationPage()),
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Column(children: [
                    Text(
                      "Cease to struggle and  you cease to live.\n",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30.0,
                          fontWeight: FontWeight.w400),
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      child: Text("Thomas Carlyle",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w400)),
                    )
                  ]),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                )),
          ),
          Expanded(
            child: Padding(padding: const EdgeInsets.fromLTRB(0, 0, 0, 200)),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                  onPressed: () {
                    //not implement
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => WordsTodayToLearnPage()),
                    );
                  },
                  child: Text(
                    "Learn",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.w400),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  )),
              ElevatedButton(
                  onPressed: () {
                    //not implement
                  },
                  child: Text(
                    "Review",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shadowColor: Colors.white70,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  )),
            ],
          ),
          Padding(padding: const EdgeInsets.only(bottom: 40)),
        ],
      ),
    );
  }
}
