import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class notifications extends StatefulWidget {
  const notifications({super.key});

  @override
  State<notifications> createState() => _notificationsState();
}

class _notificationsState extends State<notifications> {
  List<ImageDetail> dataList = [
    ImageDetail(
        imgPath: 'image/pic4.jpg',
        name: 'Smith',
        mutualfriend: '5+ Mutual Friend'),
    ImageDetail(
        imgPath: 'image/pic3.jpg',
        name: 'Smith',
        mutualfriend: '5+ Mutual Friend'),
    ImageDetail(
        imgPath: 'image/pic4.jpg',
        name: 'Smith',
        mutualfriend: '5+ Mutual Friend'),
    ImageDetail(
        imgPath: 'image/pic4.jpg',
        name: 'Smith',
        mutualfriend: '5+ Mutual Friend'),
    ImageDetail(
        imgPath: 'image/pic4.jpg',
        name: 'Smith',
        mutualfriend: '5+ Mutual Friend'),
    ImageDetail(
        imgPath: 'image/pic4.jpg',
        name: 'Smith',
        mutualfriend: '5+ Mutual Friend'),
    ImageDetail(
        imgPath: 'image/pic4.jpg',
        name: 'Smith',
        mutualfriend: '5+ Mutual Friend'),
  ]; // Danh sách dữ liệu mẫu

  final List<String> texts = [
    'Đoạn văn bản 1',
    'Đoạn văn bản 2',
    'Đoạn văn bản 3',
    'Đoạn văn bản 4',
    'Đoạn văn bản 5',
    'Đoạn văn bản 6',
    'Đoạn văn bản 7',
    'Đoạn văn bản 8',
    'Đoạn văn bản 9',
    // Thêm các đoạn văn bản khác vào đây nếu cần
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Color.fromRGBO(255, 245, 245, 1),
        // padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        constraints: BoxConstraints.expand(),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(20, 20, 0, 20),
                width: double.infinity,
                // alignment: Alignment.centerLeft,
                child: Text(
                  "Activity",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20, 12, 0, 12),
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromRGBO(255, 192, 192, 1),
                    width: 1,
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Image.asset(
                        "image/vector.png",
                        width: 35,
                        height: 35,
                      ),
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    Text(
                      "10+ friend request",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 500,
                child: ListView.builder(
                  itemCount: texts.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromRGBO(255, 192, 192, 1),
                            width: 1,
                          ),
                        ),
                        padding: EdgeInsets.fromLTRB(23, 34, 0, 34),
                        child: Text(
                          texts[index],
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                // height: 280,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color.fromRGBO(255, 192, 192, 1),
                    width: 1,
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 23, 0, 12),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "People You May Know:",
                          // textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Wrap(
                        children: dataList.map((item) {
                          return Container(
                            child: Column(
                              children: [
                                Container(
                                  width: 100,
                                  height: 180,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  padding: EdgeInsets.fromLTRB(0, 0, 9, 0),
                                  child: Column(
                                    children: [
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(5),
                                        child: Image.asset(
                                          item.imgPath,
                                          fit: BoxFit.cover,
                                          width: 100,
                                          height: 100,
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.centerLeft,
                                        child: Column(
                                          children: [
                                            Text(
                                              item.name,
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            Text(
                                              item.mutualfriend,
                                              style: TextStyle(
                                                  fontSize: 5,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 13,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        }).toList(),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.house),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.magnifyingGlass),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.circlePlus),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.heart),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.user,
            ),
            label: 'Home',
          ),
        ],
        showSelectedLabels: false,
        showUnselectedLabels: false,
      ),
    );
  }
}

class ImageDetail {
  final String imgPath;
  final String name;
  final String mutualfriend;
  ImageDetail({
    required this.imgPath,
    required this.name,
    required this.mutualfriend,
  });
}
