import 'package:flutter/material.dart';

class WordDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var interpretationStyle = TextStyle(fontSize: 20);
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(top: 30),
          child: Text("  " + "declare",
              style: TextStyle(fontSize: 30.0, fontStyle: FontStyle.normal)),
        ),
        Container(
          padding: EdgeInsets.all(10),
          width: 360,
          height: 200,
          child: PageView(
            children: [
              Text(
                "If you declare that sonmething is true,you say that it is true in a firm,deliberate way.You can also declare an attitude or intension",
                style: interpretationStyle,
              ),
              Text(
                "If you declare sonmething,you state officially and formally that it exists or is the case",
                style: interpretationStyle,
              ),
              Text(
                  "If you declare goods that you have bought in another country or money that you have earned,you say how much you have bought or earned so that you can pay tax on it",
                  style: interpretationStyle)
            ],
          ),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(10))),
        ),
        Padding(padding: EdgeInsets.only(top: 30)),
        Container(
          padding: EdgeInsets.all(10),
          width: 360,
          height: 400,
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: PageView(children: [
            _MorphemePage(),
            _OtherRelatedWordsPage(),
            _PhasesPage(),
            _TestPointsPage(),
            _IllustrativeSentencesPage(),
            _WordAnalysisPage(),
          ]),
        ),

        //Padding(padding: EdgeInsets.only(bottom: 30))
      ],
    );
  }
}

class _MorphemePage extends StatelessWidget {
  var style = TextStyle(fontSize: 20);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Text("第三人称单数:diclares", style: style),
          padding: EdgeInsets.all(20),
        ),
        Container(
            child: Text("过去式:diclared", style: style),
            padding: EdgeInsets.all(20)),
        Container(
            child: Text("过去分词:diclared", style: style),
            padding: EdgeInsets.all(20)),
        Container(
            child: Text("现在分词:diclaring", style: style),
            padding: EdgeInsets.all(20))
      ],
    );
  }
}

class _OtherRelatedWordsPage extends StatelessWidget {
  var style = TextStyle(fontSize: 20);
  var interval = "  ";
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          child: Text(
              "近义词:\n" +
                  interval +
                  "state, claim, proclaim, pronounce, announce, assert, affirm, allege",
              style: style),
          padding: EdgeInsets.all(20),
        ),
        Container(
            child: Text("反义词:\n" + interval + "undeclare, unannounce",
                style: style),
            padding: EdgeInsets.all(20)),
        Container(
            child: Text(
                "同根词:\n" + interval + "diclarative, declaration, declarer",
                style: style),
            padding: EdgeInsets.all(20)),
      ],
    );
  }
}

class _PhasesPage extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    return Column(
      children: [
        Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('declare against sb/sth',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            Text(
              "to say publicly that you do not support sb/sth",
              style: TextStyle(fontSize: 20),
            ),
          ],
        )),
        Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('declare for sb/sth',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            Text(
              "to say publicly that you support sb/sth",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ))
      ],
    );
  }
}

class _TestPointsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("2010年英语(二)阅读"),
            Text(
                'to declare sex discrimination in jury selection to be unconstituional',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            Text(
              "宣布陪审员遴选中的性别歧视为违宪行为",
              style: TextStyle(fontSize: 20),
            ),
          ],
        )),
      ],
    );
  }
}

class _IllustrativeSentencesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("2018-8《洛杉矶时报》"),
            Text("“Play is not frivolous,”the academy’s report declares.",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            Text(
              "该学院的报告称,“玩耍并非没有用处”",
              style: TextStyle(fontSize: 20),
            ),
          ],
        )),
      ],
    );
  }
}

class _WordAnalysisPage extends StatelessWidget {
  @override
  Widget build(BuildContext) {
    return Column(
      children: [
        Container(
          child: Text("de（表加强）+ clare<clar（清楚的）> -> 说得非常清楚 -> 宣布;声明",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        ),
        Container(
          padding: EdgeInsets.only(top: 20),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Column(children: [
            Text("de- 前缀，表加强 ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ButtonBar(
              children: [
                Expanded(
                    child: TextButton(onPressed: () {}, child: Text("de"))),
                Expanded(
                    child: TextButton(onPressed: () {}, child: Text("clar")))
              ],
            )
          ]),
        )
      ],
    );
  }
}
