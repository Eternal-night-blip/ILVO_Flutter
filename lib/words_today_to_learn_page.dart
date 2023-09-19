import 'package:flutter/material.dart';
import 'package:ilvo_flutter/start_learn_page.dart';

class WordsTodayToLearnPage extends StatelessWidget {
  var wordsTodayShouldLearn = <String>[
    "word1",
    "word2",
    "word3",
    "word4",
    "word5",
    "word6",
    "word7",
    "word8",
    "word9",
    "word10",
    "word11",
    "word12",
    "word13",
    "word14",
    "word15",
    "word16",
    "word17",
    "word18",
    "word19",
    "word20",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                label: Icon(
                  Icons.keyboard_arrow_left,
                  size: 40.0,
                  color: Colors.black,
                ),
                icon: Text.rich(TextSpan(
                  text: "",
                  style: TextStyle(
                      fontSize: 30,
                      fontStyle: FontStyle.normal,
                      color: Colors.black),
                )),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                )),
            Expanded(
                child:
                    Padding(padding: const EdgeInsets.fromLTRB(0, 0, 200, 0))),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StartLearnPage()),
                  );
                },
                // 'label' means on the left,'icon' means on the right
                label: Icon(
                  Icons.keyboard_arrow_right,
                  size: 40.0,
                  color: Colors.black,
                ),
                icon: Text.rich(TextSpan(
                  text: "开始学习",
                  style: TextStyle(
                      fontSize: 30,
                      fontStyle: FontStyle.normal,
                      color: Colors.black),
                )),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ))
          ],
        ),
        Container(
          padding: EdgeInsets.fromLTRB(0, 30, 0, 30),
          child: Center(
            child: Text.rich(TextSpan(
                text: "今日需要学习的单词",
                style: TextStyle(fontSize: 30.0, fontStyle: FontStyle.normal))),
          ),
        ),
        Container(
          height: 600,
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemCount: wordsTodayShouldLearn.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                child: Text(wordsTodayShouldLearn[index],
                    style:
                        TextStyle(fontSize: 30.0, fontStyle: FontStyle.normal)),
              );
            },
          ),
        ),
      ],
    ));
  }
}
