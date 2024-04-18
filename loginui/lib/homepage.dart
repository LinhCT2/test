import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100.0),
        child: AppBar(
          flexibleSpace: Container(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 40,
                ),
                // Stack(
                //   children: [
                //     Text(
                //       "HIPPIE THERAPY",
                //       style: GoogleFonts.revalia(
                //         fontWeight: FontWeight.w700,
                //         fontSize: 25,
                //         height: 1.5,
                //         color: Colors.black,
                //       ),
                //     ),
                //     Text(
                //       "HIPPIE THERAPY",
                //       style: GoogleFonts.revalia(
                //         fontWeight: FontWeight.w400,
                //         fontSize: 25,
                //         height: 1.5,
                //         color: Color.fromRGBO(255, 197, 197, 1),
                //         // shadows: [
                //         //   Shadow(
                //         //     // Đặt màu sắc và độ dày của đường viền
                //         //     color: Colors.black,
                //         //     blurRadius: 5,
                //         //   ),
                //         // ],
                //       ),
                //     ),
                //   ],
                Text(
                  "HIPPIE THERAPY",
                  style: GoogleFonts.revalia(
                    fontWeight: FontWeight.w400,
                    fontSize: 25,
                    height: 1.5,
                    color: Color.fromRGBO(255, 197, 197, 1),
                  ),
                ),
                IconButton(
                  icon: Icon(FontAwesomeIcons.solidPaperPlane),
                  iconSize: 22.0,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          border: Border(
            top: BorderSide(
              width: 1,
              color: Color.fromRGBO(255, 192, 192, 1),
            ),
          ),
        ),
        // padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        constraints: BoxConstraints.expand(),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 1,
                      color: Color.fromRGBO(255, 192, 192, 1),
                    ),
                  ),
                ),
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "XYZ Photographs",
                          style: TextStyle(fontSize: 15, height: 1.5),
                        ),
                        GestureDetector(
                          child: Icon(FontAwesomeIcons.ellipsis),
                          onTap: () {},
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: 385,
                      height: 195,
                      child: Image.asset(
                        'image/pic3.jpg',
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(FontAwesomeIcons.heart),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(FontAwesomeIcons.comment),
                          color: Colors.black,
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(FontAwesomeIcons.locationArrow),
                          color: Colors.black,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 1,
                      color: Color.fromRGBO(255, 192, 192, 1),
                    ),
                  ),
                ),
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "XYZ Photographs",
                          style: TextStyle(fontSize: 15, height: 1.5),
                        ),
                        GestureDetector(
                          child: Icon(FontAwesomeIcons.ellipsis),
                          onTap: () {},
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: 385,
                      height: 195,
                      child: Image.asset(
                        'image/pic4.jpg',
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(FontAwesomeIcons.heart),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(FontAwesomeIcons.comment),
                          color: Colors.black,
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(FontAwesomeIcons.locationArrow),
                          color: Colors.black,
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      width: 1,
                      color: Color.fromRGBO(255, 192, 192, 1),
                    ),
                  ),
                ),
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "XYZ Photographs",
                          style: TextStyle(
                            fontSize: 15,
                            height: 1.5,
                          ),
                        ),
                        Icon(FontAwesomeIcons.ellipsis),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: 385,
                      height: 195,
                      child: Image.asset(
                        'image/pic3.jpg',
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(FontAwesomeIcons
                              .solidHeart), //icon: Icon(FontAwesomeIcons.heart),
                          color: const Color.fromARGB(255, 235, 84, 73),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(FontAwesomeIcons.comment),
                          color: Colors.black,
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(FontAwesomeIcons.locationArrow),
                          color: Colors.black,
                          onPressed: () {},
                        ),
                      ],
                    ),
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
