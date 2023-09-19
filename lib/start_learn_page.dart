import 'package:flutter/material.dart';
import 'package:ilvo_flutter/word_detail.dart';

class StartLearnPage extends StatelessWidget {
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
                  text: "learn for details",
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
        WordDetail(),
      ]),
    );
  }
}
