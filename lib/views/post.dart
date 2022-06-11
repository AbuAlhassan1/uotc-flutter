import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/firebase_controller.dart';

class Post extends StatelessWidget {
  final FirebaseController fireController = Get.find();
  Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // get width and height of the screen
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: AspectRatio(
        aspectRatio: 10 / 14,
        child: Column(
          children: [
            Container(
              height: 25,
              child: TextButton(
                onPressed: () async {
                  await fireController.signoutUser();
                },
                child: const Text("Signout"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        minRadius: 22,
                        backgroundImage: NetworkImage(
                            "https://instagram.fbgw41-3.fna.fbcdn.net/v/t51.2885-19/277520502_141172985075947_5867885858192567374_n.jpg?stp=dst-jpg_s150x150&_nc_ht=instagram.fbgw41-3.fna.fbcdn.net&_nc_cat=107&_nc_ohc=nRNEMNgLLY8AX-QQddW&tn=W_YLm4izvjT3k4zX&edm=ALbqBD0BAAAA&ccb=7-4&oh=00_AT_0B1Hle5sknWVDxuyKe3vDmPYGgoGM78WdRynSnsqs5w&oe=628209F0&_nc_sid=9a90d6"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${width}",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                            const Text(
                              "20-20-2020",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.keyboard_arrow_down_outlined,
                    color: Colors.white,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: AspectRatio(
                aspectRatio: 4 / 4,
                child: Container(
                  height: 350,
                  width: 350,
                  color: Colors.red,
                  // child: ,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: const [
                    Icon(
                      Icons.heart_broken,
                      color: Colors.white,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Icon(
                        Icons.comment,
                        color: Colors.white,
                      ),
                    ),
                    Icon(
                      Icons.share,
                      color: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
              child: Row(
                children: const [
                  Flexible(
                    child: Text(
                      "This is some text as placeholder as description for this post :)",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      softWrap: true,
                      // maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
