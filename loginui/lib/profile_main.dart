import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class main_profile extends StatefulWidget {
  const main_profile({super.key});

  @override
  State<main_profile> createState() => _main_profileState();
}

List<String> imageList = [
  'image/pic3.jpg',
  'image/pic3.jpg',
  'image/pic3.jpg',
  'image/pic3.jpg',
  'image/pic3.jpg',
  'image/pic3.jpg',
  'image/pic3.jpg',
  'image/pic3.jpg',
  'image/pic3.jpg',
  'image/pic3.jpg',
  'image/pic3.jpg',
];

final double coverHeight = 280;

final double coverImage = 144;

class _main_profileState extends State<main_profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          buildTop(),
          buildContent(),
        ],
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

Widget buildTop() {
  final bottom = coverImage / 2;
  final top = coverHeight - coverImage / 2;
  return Stack(
    clipBehavior: Clip.none,
    alignment: Alignment.center,
    children: [
      Container(
          margin: EdgeInsets.only(
            bottom: bottom,
          ),
          child: buildCoverImage()),
      Positioned(
        top: top,
        child: Container(
          width: 120,
          height: 120,
          child: buildProfileImage(),
        ),
      ),
      Positioned(
        top: 34,
        right: 23,
        child: Icon(FontAwesomeIcons.bars),
      ),
      Positioned(
        left: 20,
        bottom: bottom,
        child: Row(
          children: [
            Icon(
              FontAwesomeIcons.image,
              size: 8,
              color: const Color.fromARGB(116, 255, 255, 255),
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              'Change Profile / Cover photo',
              style: TextStyle(
                fontSize: 6,
                fontWeight: FontWeight.w700,
                height: 1.2,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget buildCoverImage() => Container(
      color: Colors.grey,
      child: Image.network(
        'https://plus.unsplash.com/premium_photo-1669863284071-06345764d4c2?q=80&w=1740&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
        width: double.infinity,
        height: coverHeight, // Thay thế coverHeight ở đây
        fit: BoxFit.cover,
      ),
    );

Widget buildProfileImage() => CircleAvatar(
      radius: coverImage / 2, // Thay thế coverImage ở đây
      backgroundColor: Colors.grey.shade800,
      backgroundImage: NetworkImage(
        'https://images.unsplash.com/photo-1602233158242-3ba0ac4d2167?q=80&w=1636&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      ),
    );

Widget buildContent() => Column(
      children: [
        // const SizedBox(
        //   height: 5,
        // ),
        const Text(
          'Abdenn Arfi',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
        const SizedBox(
          height: 21,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 18),
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'About you:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 9,
              ),
              Row(
                children: [
                  Icon(
                    FontAwesomeIcons.buildingUser,
                    size: 20,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    'Home town',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Icon(
                    FontAwesomeIcons.facebook,
                    size: 20,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    'Facebook',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Icon(
                    FontAwesomeIcons.instagram,
                    size: 20,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    'Instagram',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Icon(
                    FontAwesomeIcons.circlePlus,
                    size: 20,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    'Add more info about you',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 18),
          width: double.infinity,
          height: 30,
          child: ElevatedButton(
            onPressed: () {},
            child: Text(
              "Edit Your Profile",
              style: TextStyle(fontSize: 17, color: Colors.white, height: 1.5),
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
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Color.fromRGBO(255, 192, 192, 1),
              width: 1,
            ),
          ),
          padding: EdgeInsets.symmetric(vertical: 10),
          margin: EdgeInsets.symmetric(vertical: 12),
          width: double.infinity,
          child: Text(
            'Posts of You',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700,
              height: 1.5,
            ),
            textAlign: TextAlign.center,
          ),
        ),

        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 4,
            // vertical: 30,
          ),
          height: 740,
          alignment: Alignment.center,
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 4,
              mainAxisSpacing: 4,
            ),
            itemBuilder: (context, index) {
              return RawMaterialButton(
                onPressed: () {},
                child: Container(
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage(imageList[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
            itemCount: imageList.length,
          ),
        ),
      ],
    );
