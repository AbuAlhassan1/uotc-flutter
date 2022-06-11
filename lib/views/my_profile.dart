import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:uotc/views/post.dart';
import '../controllers/firebase_controller.dart';

class MyProfile extends StatefulWidget {
  final FirebaseController fireController = Get.find();
  MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      backgroundColor: const Color(0x001a1a1a),
      // appBar: AppBar(
      //   automaticallyImplyLeading: false,
      //   leading: IconButton(
      //     icon: Icon(
      //       Icons.arrow_back_ios,
      //       color: Color(0xFF508FBB),
      //     ),
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //   ),
      //   elevation: 0,
      //   backgroundColor: Color(0x001a1a1a),
      // ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 50,
            pinned: true,
            collapsedHeight: 50,
            expandedHeight: 50,
            automaticallyImplyLeading: false,
            elevation: 0,
            backgroundColor: const Color(0x001a1a1a),
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                // size: 15,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          SliverToBoxAdapter(
            child: Post(),
          ),
          SliverToBoxAdapter(
            child: Post(),
          ),
          SliverToBoxAdapter(
            child: Post(),
          ),
          SliverToBoxAdapter(
            child: Post(),
          ),
          SliverToBoxAdapter(
            child: Post(),
          ),
          SliverToBoxAdapter(
            child: Post(),
          ),
          SliverToBoxAdapter(
            child: Post(),
          ),
          SliverToBoxAdapter(
            child: Post(),
          ),
          SliverToBoxAdapter(
            child: Post(),
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
