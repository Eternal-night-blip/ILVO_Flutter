import 'package:flutter/material.dart';

class SentenceAppreciationPage extends StatelessWidget {
  const SentenceAppreciationPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(padding: const EdgeInsets.fromLTRB(20, 48, 20, 0)),
          Row(
            children: [
              ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  // 'label' means on the left,'icon' means on the right
                  icon: Icon(
                    Icons.keyboard_arrow_left,
                    size: 40.0,
                    color: Colors.black,
                  ),
                  label: Text(""),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  )),
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 50)),
          Expanded(
            child: PageView(children: [
              _SentenceAndTranslationForAppreciation(
                origin: (
                  sentence: "Cease to struggle and  you cease to live.",
                  name: "Thomas Carlyle"
                ),
                translated: (sentence: "生命不息，奋斗不止。", name: "托马斯 卡莱尔"),
              ),
              _SentenceAndTranslationForAppreciation(
                origin: (
                  sentence:
                      "To like and dislike the same things,this is what makes a solid friendship",
                  name: "Sallust"
                ),
                translated: (sentence: "喜欢或不喜欢同样的事，这决定友谊是否坚固", name: "萨卢斯特"),
              ),
            ]),
          ),
          Padding(padding: const EdgeInsets.only(bottom: 100)),
        ],
      ),
    );
  }
}

class _SentenceAndTranslationForAppreciation extends StatelessWidget {
  _SentenceAndTranslationForAppreciation(
      {required ({String sentence, String name}) this.origin,
      required ({String sentence, String name}) this.translated});
  final ({String sentence, String name}) origin;
  final ({String sentence, String name}) translated;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _SentenceAppreciationShow(
            sentence: origin.sentence, name: origin.name, isOrigin: true),
        Padding(padding: EdgeInsets.only(top: 100)),
        _SentenceAppreciationShow(
            sentence: translated.sentence,
            name: translated.name,
            isOrigin: false)
      ],
    );
  }
}

class _SentenceAppreciationShow extends StatelessWidget {
  _SentenceAppreciationShow(
      {required String this.sentence,
      required String this.name,
      required bool this.isOrigin});
  final String sentence;
  final String name;
  final bool isOrigin;

  @override
  Widget build(BuildContext context) {
    String typeName;
    if (isOrigin) {
      typeName = "Origin";
    } else {
      typeName = "译文";
    }
    return Column(
      children: [
        Row(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                typeName + ":",
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
          child: Column(children: [
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                sentence + "\n",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomRight,
              child: Text(name,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.0,
                  )),
            )
          ]),
        )
      ],
    );
  }
}
