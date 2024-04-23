import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromRGBO(255, 245, 245, 1),
        // padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        constraints: BoxConstraints.expand(),
        child: Column(
          children: [
            SizedBox(
              height: 55,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromRGBO(255, 192, 192, 1),
                  width: 1,
                ),
              ),
              width: double.infinity,
              child: Text(
                'Change Your Profile Photo',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  height: 1.5,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  width: 274,
                  height: 274,
                  // decoration: BoxDecoration(
                  //   shape: BoxShape.circle,
                  //   color: Colors.white,
                  // ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(0, 50, 0, 50),
                  alignment: Alignment.center,
                  child: Image.asset(
                    "image/dp.png",
                    width: 274,
                    height: 274,
                  ),
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Color.fromRGBO(255, 192, 192, 1),
                  width: 1,
                ),
              ),
              width: double.infinity,
              child: Text(
                'Change Your Cover Photo',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  height: 1.5,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(0, 50, 0, 50),
                  width: double.infinity,
                  height: 220,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(243, 210, 210, 0.4),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "image/coverphoto.png",
                    width: 310,
                    height: 210,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
