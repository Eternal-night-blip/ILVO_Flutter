import 'package:flutter/material.dart';

class UserCenterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: const EdgeInsets.only(top: 50)),
        Row(children: [
          Padding(padding: const EdgeInsets.only(left: 20)),
          Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                      image: AssetImage("images/lazy_cat.jpg"),
                      fit: BoxFit.cover),
                  shape: BoxShape.circle)),
          Container(
            padding: const EdgeInsets.only(left: 20),
            child: Text(
              "一只懒猫",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
            ),
          )
        ]),
        Column(
          children: [
            Container(
              width: 350,
              padding: EdgeInsets.only(top: 50),
              child: ElevatedButton(
                onPressed: () {},
                child: Container(
                    child: Text(
                  "自定义学习路线",
                  style: TextStyle(fontSize: 40, color: Colors.black),
                )),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
              ),
            ),
            Container(
              width: 350,
              padding: EdgeInsets.only(top: 50),
              child: ElevatedButton(
                onPressed: () {},
                child: Container(
                    child: Text(
                  "我的学习偏好",
                  style: TextStyle(fontSize: 40, color: Colors.black),
                )),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
              ),
            ),
            Container(
              width: 350,
              padding: EdgeInsets.only(top: 50),
              child: ElevatedButton(
                onPressed: () {},
                child: Container(
                    child: Text(
                  "意见反馈",
                  style: TextStyle(fontSize: 40, color: Colors.black),
                )),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
              ),
            ),
            Container(
              width: 350,
              padding: EdgeInsets.only(top: 50),
              child: ElevatedButton(
                onPressed: () {},
                child: Container(
                    child: Text(
                  "修改密码",
                  style: TextStyle(fontSize: 40, color: Colors.black),
                )),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
              ),
            ),
            Container(
              width: 350,
              padding: EdgeInsets.only(top: 50),
              child: ElevatedButton(
                onPressed: () {},
                child: Container(
                    child: Text(
                  "退出登陆",
                  style: TextStyle(fontSize: 40, color: Colors.black),
                )),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
