import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class sign_in extends StatefulWidget {
  const sign_in({Key? key}) : super(key: key);

  @override
  State<sign_in> createState() => _sign_inState();
}

class _sign_inState extends State<sign_in> {
  int? _gioiTinh = 0;

  final List<String> items = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
  ];
  final List<String> items1 = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
  ];
  final List<String> items2 = [
    '2000',
    '2001',
    '2002',
    '2003',
    '2004',
    '2005',
    '2006',
    '2007',
  ];
  String? valueChoose;
  String? valueChoose1;
  String? valueChoose2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        // color: Colors.green[100],
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('image/pic2.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              child: Image.asset(
                'image/profile_pic.png',
                width: 60,
                height: 60,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 400,
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'First Name',
                  labelStyle: TextStyle(fontSize: 15),
                ),
              ),
            ),
            Container(
              width: 400,
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Last Name',
                  labelStyle: TextStyle(fontSize: 15),
                ),
              ),
            ),
            Container(
              width: 400,
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Email Address',
                  labelStyle: TextStyle(fontSize: 15),
                ),
              ),
            ),
            Container(
              width: 400,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(fontSize: 15),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: AlignmentDirectional.centerStart,
              child: const Text(
                "Date of birth",
                style: TextStyle(fontSize: 15),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                DropdownButtonHideUnderline(
                  child: DropdownButton2<String>(
                    isExpanded: true,
                    hint: const Row(
                      children: [
                        // Icon(
                        //   Icons.list,
                        //   size: 14,
                        //   color: Colors.black,
                        // ),
                        SizedBox(
                          width: 4,
                        ),
                        Expanded(
                          child: Text(
                            'Day',
                            style: TextStyle(
                              fontSize: 12,
                              // fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    items: items
                        .map((String item) => DropdownMenuItem<String>(
                              value: item,
                              child: Container(
                                // padding: EdgeInsets.fromLTRB(10, 0, 60, 0),
                                // width: 100,
                                // decoration: BoxDecoration(
                                //   border: Border.all(
                                //     color: Colors.black,
                                //     width: 0.5,
                                //   ),
                                // ),
                                child: Text(
                                  item,
                                  style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ))
                        .toList(),
                    value: valueChoose,
                    onChanged: (String? value) {
                      setState(() {
                        valueChoose = value;
                      });
                    },
                    buttonStyleData: ButtonStyleData(
                      height: 30,
                      width: 100,
                      padding: const EdgeInsets.only(left: 4, right: 4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black26,
                          width: 1,
                        ),
                        // color: Colors.transparent,
                      ),
                      // elevation: 2,
                    ),
                    iconStyleData: const IconStyleData(
                      icon: Icon(
                        Icons.arrow_forward_ios_outlined,
                      ),
                      iconSize: 12,
                      iconEnabledColor: Colors.black,
                      iconDisabledColor: Colors.grey,
                    ),
                    dropdownStyleData: DropdownStyleData(
                      maxHeight: 200,
                      width: 100,
                      decoration: BoxDecoration(
                        // borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                        color: Color.fromRGBO(255, 221, 221, 1),
                      ),
                      // offset: const Offset(-20, 0),
                      scrollbarTheme: ScrollbarThemeData(
                        radius: const Radius.circular(40),
                        thickness: MaterialStateProperty.all<double>(6),
                        thumbVisibility: MaterialStateProperty.all<bool>(true),
                      ),
                    ),
                    menuItemStyleData: const MenuItemStyleData(
                      height: 25,
                      padding: EdgeInsets.only(left: 14, right: 14),
                      // selectedMenuItemBuilder:
                    ),
                  ),
                ),
                DropdownButtonHideUnderline(
                  child: DropdownButton2<String>(
                    isExpanded: true,
                    hint: const Row(
                      children: [
                        // Icon(
                        //   Icons.list,
                        //   size: 14,
                        //   color: Colors.black,
                        // ),
                        SizedBox(
                          width: 4,
                        ),
                        Expanded(
                          child: Text(
                            'Month',
                            style: TextStyle(
                              fontSize: 12,
                              // fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    items: items1
                        .map((String item) => DropdownMenuItem<String>(
                              value: item,
                              child: Container(
                                // padding: EdgeInsets.fromLTRB(10, 0, 60, 0),
                                // width: 100,
                                // decoration: BoxDecoration(
                                //   border: Border.all(
                                //     color: Colors.black,
                                //     width: 0.5,
                                //   ),
                                // ),
                                child: Text(
                                  item,
                                  style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ))
                        .toList(),
                    value: valueChoose1,
                    onChanged: (String? value) {
                      setState(() {
                        valueChoose1 = value;
                      });
                    },
                    buttonStyleData: ButtonStyleData(
                      height: 30,
                      width: 100,
                      padding: const EdgeInsets.only(left: 4, right: 4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black26,
                          width: 1,
                        ),
                        // color: Colors.transparent,
                      ),
                      // elevation: 2,
                    ),
                    iconStyleData: const IconStyleData(
                      icon: Icon(
                        Icons.arrow_forward_ios_outlined,
                      ),
                      iconSize: 12,
                      iconEnabledColor: Colors.black,
                      iconDisabledColor: Colors.grey,
                    ),
                    dropdownStyleData: DropdownStyleData(
                      maxHeight: 200,
                      width: 100,
                      decoration: BoxDecoration(
                        // borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                        color: Color.fromRGBO(255, 221, 221, 1),
                      ),
                      // offset: const Offset(-20, 0),
                      scrollbarTheme: ScrollbarThemeData(
                        radius: const Radius.circular(40),
                        thickness: MaterialStateProperty.all<double>(6),
                        thumbVisibility: MaterialStateProperty.all<bool>(true),
                      ),
                    ),
                    menuItemStyleData: const MenuItemStyleData(
                      height: 25,
                      padding: EdgeInsets.only(left: 14, right: 14),
                      // selectedMenuItemBuilder:
                    ),
                  ),
                ),
                DropdownButtonHideUnderline(
                  child: DropdownButton2<String>(
                    isExpanded: true,
                    hint: const Row(
                      children: [
                        // Icon(
                        //   Icons.list,
                        //   size: 14,
                        //   color: Colors.black,
                        // ),
                        SizedBox(
                          width: 4,
                        ),
                        Expanded(
                          child: Text(
                            'Year',
                            style: TextStyle(
                              fontSize: 12,
                              // fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    items: items2
                        .map((String item) => DropdownMenuItem<String>(
                              value: item,
                              child: Container(
                                // padding: EdgeInsets.fromLTRB(10, 0, 60, 0),
                                // width: 100,
                                // decoration: BoxDecoration(
                                //   border: Border.all(
                                //     color: Colors.black,
                                //     width: 0.5,
                                //   ),
                                // ),
                                child: Text(
                                  item,
                                  style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ))
                        .toList(),
                    value: valueChoose2,
                    onChanged: (String? value) {
                      setState(() {
                        valueChoose2 = value;
                      });
                    },
                    buttonStyleData: ButtonStyleData(
                      height: 30,
                      width: 100,
                      padding: const EdgeInsets.only(left: 4, right: 4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black26,
                          width: 1,
                        ),
                        // color: Colors.transparent,
                      ),
                      // elevation: 2,
                    ),
                    iconStyleData: const IconStyleData(
                      icon: Icon(
                        Icons.arrow_forward_ios_outlined,
                      ),
                      iconSize: 12,
                      iconEnabledColor: Colors.black,
                      iconDisabledColor: Colors.grey,
                    ),
                    dropdownStyleData: DropdownStyleData(
                      maxHeight: 200,
                      width: 100,
                      decoration: BoxDecoration(
                        // borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                        color: Color.fromRGBO(255, 221, 221, 1),
                      ),
                      // offset: const Offset(-20, 0),
                      scrollbarTheme: ScrollbarThemeData(
                        radius: const Radius.circular(40),
                        thickness: MaterialStateProperty.all<double>(6),
                        thumbVisibility: MaterialStateProperty.all<bool>(true),
                      ),
                    ),
                    menuItemStyleData: const MenuItemStyleData(
                      height: 25,
                      padding: EdgeInsets.only(left: 14, right: 14),
                      // selectedMenuItemBuilder:
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              alignment: AlignmentDirectional.centerStart,
              child: const Text(
                "Gender",
                style: TextStyle(fontSize: 15),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Row(
                children: [
                  Container(
                    width: 130,
                    height: 30,
                    child: RadioListTile<int>(
                      title: Text(
                        'Male',
                        style: TextStyle(fontSize: 15),
                      ),
                      value: 0,
                      groupValue: _gioiTinh,
                      contentPadding: EdgeInsets.zero,
                      onChanged: (int? value) {
                        setState(
                          () {
                            _gioiTinh = value;
                          },
                        );
                      },
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    width: 150,
                    height: 30,
                    child: RadioListTile<int>(
                      title: Text(
                        'Female',
                        style: TextStyle(fontSize: 15),
                      ),
                      value: 1,
                      groupValue: _gioiTinh,
                      contentPadding: EdgeInsets.zero,
                      onChanged: (int? value) {
                        setState(
                          () {
                            _gioiTinh = value;
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 285,
                  child: Text(
                    "By clicking Sign Up, you agree to our Terms, Data Policy and Cookie Policy. You may receive SMS notifications from us and can opt out at any time.",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 200,
              height: 40,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "data",
                  style: TextStyle(fontSize: 17, color: Colors.white),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Color(0xFF27D276)),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: GestureDetector(
                onTap: () {},
                child: const Text(
                  'Already have an account?',
                  style: TextStyle(
                    fontSize: 17,
                    color: Color.fromARGB(255, 106, 122, 131),
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
