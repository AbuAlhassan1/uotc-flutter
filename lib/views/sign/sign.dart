import 'package:flutter/material.dart';
import 'signinform.dart';
import 'signupform.dart';

class Sign extends StatelessWidget {
  Sign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            // Header Image Of The University Statue -- Start --
            Container(
              height: height / 2,
              width: width,
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                // boxShadow: const <BoxShadow>[
                //   BoxShadow(
                //     color: Colors.black,
                //     offset: Offset(0, 10),
                //     blurRadius: 20,
                //     spreadRadius: -10
                //   ),
                // ],
                border: Border.all(
                  color: Colors.white,
                ),
                borderRadius: BorderRadius.circular(30),
                image: const DecorationImage(
                  image: AssetImage("assets/images/uotStatue.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Header Image Of The University Statue -- End --

            Expanded(
              child: Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // Introduction Text -- Start --
                    Column(
                      children: [
                        // Text(width.round().toString()),
                        // Text(height.round().toString()),
                        Text(
                          "Learn, Communicate And Share",
                          style: TextStyle(
                            fontSize: width > 400 ? 30 : 23,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text("Welcome to the world of learning. Here you can learn, communicate and share with your friends and colleagues",
                          style: TextStyle(
                            fontSize: width > 400 ? 20 : 15,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    // Introduction Text -- End --
            
                    // Signin And Signup Button -- Start --
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(3),
                              color: const Color.fromARGB(255, 46, 46, 255),
                              boxShadow: const <BoxShadow>[
                                BoxShadow(
                                  color: Color.fromARGB(255, 107, 107, 107),
                                  offset: Offset(0, 5),
                                  blurRadius: 20,
                                  spreadRadius: -10
                                ),
                              ],
                            ),
                            child: TextButton(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => const SignInForm()));
                              },
                              child: const Text(
                                "Sign In",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          ),
                        ),
            
                        const SizedBox(width: 10),
            
                        Expanded(
                          child: Container(
                            height: 60,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(3),
                              color: Colors.grey[300],
                              boxShadow: const <BoxShadow>[
                                BoxShadow(
                                  color: Color.fromARGB(255, 107, 107, 107),
                                  offset: Offset(0, 5),
                                  blurRadius: 20,
                                  spreadRadius: -10
                                ),
                              ]
                            ),
                            child: TextButton(
                              onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpForm())); },
                              child: const Text(
                                "Sign Up",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    // Signin And Signup -- End --
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

class SignClipperOne extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    
    final path = Path();
    path.moveTo(0,0);
    path.lineTo(size.width,0);
    path.lineTo(size.width,size.height*0.9000000);
    path.quadraticBezierTo(size.width*0.8890000,size.height*1.0005000,size.width*0.6980000,size.height);
    path.cubicTo(size.width*0.5010000,size.height*0.9965000,size.width*0.4680000,size.height*0.9020000,size.width*0.2840000,size.height*0.9000000);
    path.quadraticBezierTo(size.width*0.1285000,size.height*0.9020000,0,size.height);
    path.lineTo(0,0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
class SignClipperTwo extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    
    final path = Path();
    path.moveTo(0,0);
    path.lineTo(size.width,0);
    path.lineTo(size.width,size.height*0.8720000);
    path.quadraticBezierTo(size.width*0.8890000,size.height*0.9685000,size.width*0.6980000,size.height*0.9680000);
    path.cubicTo(size.width*0.5010000,size.height*0.9645000,size.width*0.4720000,size.height*0.8680000,size.width*0.2880000,size.height*0.8660000);
    path.quadraticBezierTo(size.width*0.1325000,size.height*0.8680000,0,size.height*0.9620000);
    path.lineTo(0,0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    throw UnimplementedError();
  }
}