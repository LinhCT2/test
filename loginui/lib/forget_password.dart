import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class forget_password extends StatefulWidget {
  const forget_password({super.key});

  @override
  State<forget_password> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<forget_password> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('image/pic2.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        constraints: BoxConstraints.expand(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: GestureDetector(
                onTap: () {},
                child: const Text(
                  'Recover your account',
                  style: TextStyle(
                    fontSize: 30,
                    color: Color.fromARGB(255, 106, 122, 131),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 290,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Color.fromRGBO(174, 161, 161, 1),
                  width: 1,
                ),
              ),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 11.0),
                  hintText: 'Recovery Email Address',
                  hintStyle: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Text(
              "OR",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w300,
                height: 2.5,
              ),
            ),
            Container(
              width: 290,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Color.fromRGBO(174, 161, 161, 1),
                  width: 1,
                ),
              ),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 11.0),
                  hintText: 'Phone Number',
                  hintStyle: TextStyle(fontSize: 15),
                ),
              ),
            ),
            SizedBox(
              height: 48,
            ),
            Container(
              width: 220,
              height: 52,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Confirm",
                  style:
                      TextStyle(fontSize: 17, color: Colors.white, height: 1.5),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xFF27D276)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 45,
            ),
            Container(
              width: 290,
              height: 37,
              child: Text(
                "Enter 4 Digit Code You Received on your Phone Number Or Recovery Email",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w300),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 210,
              height: 80,
              child: Column(
                children: [
                  Text(
                    "CODE",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w100),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        alignment: Alignment.center,
                        child: Text(
                          "1",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 1, color: Color.fromRGBO(0, 0, 0, 0.3)),
                        ),
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        alignment: Alignment.center,
                        child: Text(
                          "2",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 1, color: Color.fromRGBO(0, 0, 0, 0.3)),
                        ),
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        alignment: Alignment.center,
                        child: Text(
                          "3",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 1, color: Color.fromRGBO(0, 0, 0, 0.3)),
                        ),
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        alignment: Alignment.center,
                        child: Text(
                          "4",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                              width: 1, color: Color.fromRGBO(0, 0, 0, 0.3)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              width: 290,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color: Color.fromRGBO(174, 161, 161, 1),
                  width: 1,
                ),
              ),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 11.0),
                  hintText: 'Enter New Password',
                  hintStyle: TextStyle(fontSize: 15),
                ),
              ),
            ),
            SizedBox(
              height: 42,
            ),
            Container(
              width: 220,
              height: 52,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "LOGIN",
                  style:
                      TextStyle(fontSize: 17, color: Colors.white, height: 1.5),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xFF27D276)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 64,
            ),
          ],
        ),
      ),
    );
  }
}
