import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class FeedBackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
    return Column(
      children: [
        Padding(padding: const EdgeInsets.fromLTRB(20, 48, 20, 0)),
        Row(
          children: [
            Padding(padding: const EdgeInsets.fromLTRB(0, 0, 200, 0)),
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => GlobalFeedBackPage()),
                  );
                },
                // 'label' means on the left,'icon' means on the right
                label: Icon(
                  Icons.keyboard_double_arrow_right,
                  size: 40.0,
                  color: Colors.black,
                ),
                icon: Text.rich(TextSpan(
                  text: "整体反馈",
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
        Expanded(
          child: PageView(children: [
            Column(
              children: [
                Center(
                  child: Text.rich(TextSpan(
                      text: "今日需要学习的单词",
                      style: TextStyle(
                          fontSize: 30.0, fontStyle: FontStyle.normal))),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: wordsTodayShouldLearn.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Center(
                        child: Text.rich(TextSpan(
                            text: wordsTodayShouldLearn[index],
                            style: TextStyle(
                                fontSize: 30.0, fontStyle: FontStyle.normal))),
                      );
                    },
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Center(
                  child: Text.rich(TextSpan(
                      text: "今日学习的单词",
                      style: TextStyle(
                          fontSize: 30.0, fontStyle: FontStyle.normal))),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: wordsTodayShouldLearn.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Center(
                        child: Text.rich(TextSpan(
                            text: wordsTodayShouldLearn[index],
                            style: TextStyle(
                                fontSize: 30.0, fontStyle: FontStyle.normal))),
                      );
                    },
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Center(
                  child: Text.rich(TextSpan(
                      text: "今日还未学习的单词",
                      style: TextStyle(
                          fontSize: 30.0, fontStyle: FontStyle.normal))),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: wordsTodayShouldLearn.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Center(
                        child: Text.rich(TextSpan(
                            text: wordsTodayShouldLearn[index],
                            style: TextStyle(
                                fontSize: 30.0, fontStyle: FontStyle.normal))),
                      );
                    },
                  ),
                ),
              ],
            ),
            ListView(
              children: [
                Center(
                  child: Text.rich(TextSpan(
                      text: "测试错误报告",
                      style: TextStyle(
                          fontSize: 30.0, fontStyle: FontStyle.normal))),
                ),
              ],
            ),
          ], scrollDirection: Axis.horizontal),
        ),
      ],
    );
  }
}

class GlobalFeedBackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Padding(padding: const EdgeInsets.fromLTRB(20, 48, 20, 0)),
        Row(
          children: [
            ElevatedButton.icon(
                onPressed: () {
                  Navigator.pop(context);
                },
                // 'label' means on the left,'icon' means on the right
                icon: Icon(Icons.keyboard_double_arrow_left,
                    size: 40.0, color: Colors.black),
                label: Text.rich(TextSpan(
                  text: "今日反馈",
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
          ],
        ),
        Expanded(
            child: Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 10, 10),
                child: ComparisonDiagramOfActualPlanForWord())),
        Expanded(
            child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
          child: ProgressChartForWord(),
        )),
      ]),
    );
  }
}

class ComparisonDiagramOfActualPlanForWord extends StatelessWidget {
  static var actualData = [
    FlSpot(1, 10),
    FlSpot(4, 10),
    FlSpot(7, 10),
    FlSpot(10, 14),
    FlSpot(13, 30),
    FlSpot(16, 25),
    FlSpot(19, 38),
  ];
  static var planedData = [
    FlSpot(1, 10),
    FlSpot(4, 16),
    FlSpot(7, 15),
    FlSpot(10, 20),
    FlSpot(13, 20),
    FlSpot(16, 15),
    FlSpot(19, 18),
  ];
  var actualSpots = LineChartBarData(color: Colors.blue, spots: actualData);
  var planedSpots = LineChartBarData(color: Colors.cyan, spots: planedData);

  static var _maxYactual = actualData.reduce((a, b) => a.y > b.y ? a : b).y;
  static var _maxYplaned = planedData.reduce((a, b) => a.y > b.y ? a : b).y;
  static var _maxY = _maxYactual > _maxYplaned ? _maxYactual : _maxYplaned;
  static var _yBorder = _maxY % 10 == 0 ? _maxY : ((_maxY ~/ 10) + 1) * 10;
  @override
  Widget build(BuildContext context) => LineChart(LineChartData(
      minX: 0,
      maxX: 7 * 3, // 7 means a week, 3 meas per interval length
      minY: 0,
      maxY: _yBorder.toDouble() +
          3, // +3 means "个单词" to occupy a position in vertical bar on the top
      lineBarsData: [actualSpots, planedSpots],
      gridData: FlGridData(
          drawVerticalLine: false,
          getDrawingHorizontalLine: (value) {
            return FlLine(color: Colors.black12, strokeWidth: 1);
          }),
      borderData: FlBorderData(
          show: true,
          border: Border(
              bottom: BorderSide(color: Colors.black, style: BorderStyle.solid),
              left: BorderSide(color: Colors.transparent),
              top: BorderSide(color: Colors.transparent),
              right: BorderSide(color: Colors.transparent))),
      titlesData: FlTitlesData(
          bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                  showTitles: true,
                  interval: 1,
                  reservedSize: 30,
                  getTitlesWidget: (double value, TitleMeta meta) {
                    const style = TextStyle(fontSize: 16);
                    Widget scaleName;
                    switch (value.toInt()) {
                      case 1:
                        scaleName = Text("4.1", style: style);
                        break;
                      case 4:
                        scaleName = Text("4.2", style: style);
                        break;
                      case 7:
                        scaleName = Text("4.4", style: style);
                        break;
                      case 10:
                        scaleName = Text("4.4", style: style);
                        break;
                      case 13:
                        scaleName = Text("4.5", style: style);
                        break;
                      case 16:
                        scaleName = Text("4.6", style: style);
                      case 19:
                        scaleName = Text("4.7", style: style);
                        break;
                      default:
                        scaleName = Text("");
                        break;
                    }
                    return SideTitleWidget(
                        axisSide: meta.axisSide, space: 10, child: scaleName);
                  })),
          leftTitles: AxisTitles(
              sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 50,
                  interval: 10,
                  getTitlesWidget: (double value, TitleMeta meta) {
                    const style = TextStyle(fontSize: 16);
                    Widget scaleName;
                    scaleName = value % 10 == 0
                        ? Text(value.toInt().toString(), style: style)
                        : Text("");
                    if (value == _yBorder + 3) {
                      scaleName = Text("单词",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold));
                    }
                    return SideTitleWidget(
                        axisSide: meta.axisSide, space: 10, child: scaleName);
                  })),
          rightTitles: AxisTitles(
              sideTitles: SideTitles(
                  showTitles: true,
                  reservedSize: 50,
                  interval: 10,
                  getTitlesWidget: (double value, TitleMeta meta) {
                    Widget scaleName = Text("");

                    if (value == 0) {
                      scaleName = Text("日期",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold));
                    }
                    return SideTitleWidget(
                        axisSide: meta.axisSide, space: 10, child: scaleName);
                  })),
          topTitles: const AxisTitles(
              axisNameWidget: Padding(
                padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                child: Text.rich(TextSpan(
                    text: "实际",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                          text: "与",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: "计划",
                          style: TextStyle(
                              color: Colors.cyan,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: "学习的单词",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold))
                    ])),
              ),
              axisNameSize: 40,
              sideTitles: SideTitles(
                showTitles: false, //TODO
              )))));
}

class ProgressChartForWord extends StatefulWidget {
  @override
  State<ProgressChartForWord> createState() => _ProgressChartForWordState();
}

class _ProgressChartForWordState extends State<ProgressChartForWord> {
  int touchedIndex = -1;
  @override
  Widget build(BuildContext context) => AspectRatio(
        aspectRatio: 1.3,
        child: Row(
          children: [
            const SizedBox(
              height: 18,
            ),
            Expanded(
              child: AspectRatio(
                aspectRatio: 1,
                child: PieChart(PieChartData(
                    pieTouchData: PieTouchData(
                      touchCallback: (FlTouchEvent event, pieTouchResponse) {
                        setState(() {
                          if (!event.isInterestedForInteractions ||
                              pieTouchResponse == null ||
                              pieTouchResponse.touchedSection == null) {
                            touchedIndex = -1;
                            return;
                          }
                          touchedIndex = pieTouchResponse
                              .touchedSection!.touchedSectionIndex;
                        });
                      },
                    ),
                    borderData: FlBorderData(
                      show: false,
                    ),
                    sectionsSpace: 0,
                    centerSpaceRadius: 60,
                    sections: List.generate(2, (index) {
                      final isTouched = index == touchedIndex;
                      final fontSize = isTouched ? 25.0 : 16.0;
                      final radius = isTouched ? 80.0 : 50.0;
                      const shadows = [
                        Shadow(color: Colors.black, blurRadius: 2)
                      ];
                      double learned = 20;
                      double toBeLearned = 100 - learned;
                      switch (index) {
                        case 0:
                          return PieChartSectionData(
                              color: Colors.blue,
                              value: learned,
                              title: "$learned%",
                              radius: radius,
                              titleStyle: TextStyle(
                                  fontSize: fontSize,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  shadows: shadows));
                        case 1:
                          return PieChartSectionData(
                              color: Colors.grey,
                              value: toBeLearned,
                              title: "$toBeLearned%",
                              radius: radius,
                              titleStyle: TextStyle(
                                  fontSize: fontSize,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  shadows: shadows));
                        default:
                          throw Error();
                      }
                    }))),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Indicator(
                  color: Colors.blue,
                  text: '已学',
                  isSquare: true,
                ),
                SizedBox(
                  height: 4,
                ),
                Indicator(
                  color: Colors.grey,
                  text: '未学',
                  isSquare: true,
                ),
                SizedBox(
                  height: 4,
                ),
              ],
            ),
            const SizedBox(
              width: 28,
            ),
          ],
        ),
      );
}

class Indicator extends StatelessWidget {
  const Indicator({
    super.key,
    required this.color,
    required this.text,
    required this.isSquare,
    this.size = 16,
    this.textColor,
  });
  final Color color;
  final String text;
  final bool isSquare;
  final double size;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: isSquare ? BoxShape.rectangle : BoxShape.circle,
            color: color,
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        )
      ],
    );
  }
}
