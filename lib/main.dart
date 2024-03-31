import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:timer_count_down/timer_count_down.dart';

Future<void> main() async {
  runApp(MainApp());
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
}

class MainApp extends StatefulWidget {
  MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  String buttonName = "Check";
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: const Text('Title'),
          centerTitle: true,
          // ignore: prefer_const_constructors
          backgroundColor: Color.fromARGB(255, 171, 12, 206),
        ),
        // backgroundColor: Colors.blueGrey,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        print('object');
                      },
                      child: Container(
                        height: 180,
                        width: 180,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.amberAccent),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.collections,
                              size: 70,
                            ),
                            Text(
                              "Gallery",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        print('object');
                      },
                      child: Container(
                        height: 180,
                        width: 180,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.amberAccent),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.access_time_rounded,
                              size: 70,
                            ),
                            Text(
                              "Gallery",
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "File gan day",
                      style:
                          TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Xem tat ca",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.lightBlueAccent),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  height: 240,
                  width: 180,
                  color: Colors.red,
                  child: Column(
                    children: [
                      Image.asset(
                        'img/anh1.png',
                        width: 160,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                      Text("data"),
                      Text("data"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        /*body: Center(
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      buttonName = "Check 2st";
                    });
                    print("object");
                  },
                  child: Text(buttonName),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      buttonName = "Check 2st";
                    });
                    print("object");
                  },
                  child: Text(buttonName),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      buttonName = "Check 2st";
                    });
                    print("object");
                  },
                  child: Text(buttonName),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              label: 'bottom',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'bottom 2',
            ),
          ],
          currentIndex: currentIndex,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),*/
      ),
    );
  }
}
