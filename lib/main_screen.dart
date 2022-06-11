import 'package:flutter/material.dart';
import 'package:uotc/views/home.dart';
import 'controllers/firebase_controller.dart';
import 'controllers/view_controller.dart';
import 'package:get/get.dart';

import 'views/my_profile.dart';

class Main extends StatefulWidget {
  Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  final ViewController viewController = Get.put(ViewController());

  PageController pageController = PageController();

  List<Widget> screens = [
    const Home(),
    const Home(),
    const Home(),
  ];

  int selected_index = 0;

  void onPageChanged(int index) {
    setState(() {
      selected_index = index;
    });
  }

  void onTap(int index) {
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF000000),
      appBar: AppBar(
        titleSpacing: 20,
        backgroundColor: const Color(0x00ffffff),
        elevation: 0,
        title: const Text(
          'UOTC',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 28,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return MyProfile();
                  }),
                );
              },
              icon: const Icon(
                Icons.person,
                color: Color.fromARGB(255, 255, 253, 253),
                size: 30,
              ),
            ),
          ),
        ],
      ),
      body: PageView(
        controller: pageController,
        children: screens,
        onPageChanged: onPageChanged,
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.only(bottom: 0, top: 10),
        height: 60,
        child: BottomNavigationBar(
          currentIndex: selected_index,
          onTap: onTap,
          backgroundColor: const Color(0x001a1a1a),
          selectedItemColor: const Color(0xFF508FBB),
          unselectedItemColor: const Color.fromARGB(255, 255, 253, 253),
          elevation: 0,
          iconSize: 30,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              activeIcon: Icon(
                Icons.home,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_box_outlined,
              ),
              activeIcon: Icon(
                Icons.add_box,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings_outlined,
              ),
              activeIcon: Icon(
                Icons.settings,
              ),
              label: "",
            ),
          ],
        ),
      ),
    );
  }
}
