import 'package:erecord/pages/login/login_screen.dart';
import 'package:erecord/pages/login/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../canvas/bottom.dart';
import '../canvas/center.dart';
import '../canvas/top.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 1),
              child: Expanded(
                flex: 1,
                child: FractionallySizedBox(
                  widthFactor: 0.8,
                  child: SvgPicture.asset("assets/svg/speech.svg"),
                )
              ),
            ),
            Expanded(
              flex: 2,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    bottom: 270,
                    child: CustomPaint(
                      size: Size(MediaQuery.of(context).size.width, 100),
                      painter: TopArcPainterTop(),
                    ),
                  ),
                  Positioned(
                    bottom: 170,
                    child: CustomPaint(
                      size: Size(MediaQuery.of(context).size.width, 100),
                      painter: TopArcPainterCenter(),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Stack(
                      children: [
                        CustomPaint(
                          size: Size(MediaQuery.of(context).size.width, 200),
                          painter: TopArcPainterBottom(),
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => const LoginScreen()),
                                    );
                                  },
                                  // onPressed: () {
                                  //   Navigator.push(
                                  //     context,
                                  //     PageRouteBuilder(
                                  //       transitionDuration: const Duration(milliseconds: 0),
                                  //       pageBuilder: (_, __, ___) => const LoginScreen(),
                                  //       transitionsBuilder: (context, animation, secondaryAnimation, child) {
                                  //         const begin = Offset(0.0, 1.0);
                                  //         const end = Offset.zero;
                                  //         const curve = Curves.easeInOut;

                                  //         final tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
                                  //         final offsetAnimation = animation.drive(tween);

                                  //         return SlideTransition(
                                  //           position: offsetAnimation,
                                  //           child: child,
                                  //         );
                                  //       },
                                  //     ),
                                  //   );
                                  // },

                                  style: ElevatedButton.styleFrom(
                                    fixedSize: const Size(200, 50),
                                  ),
                                  child: const Text('SIGN IN'),
                                ),
                                const SizedBox(height: 20),
                                ElevatedButton(
                                  onPressed: () {
                                    // Future.delayed(const Duration(milliseconds: 00), () {
                                    //   Navigator.push(
                                    //     context,
                                    //     MaterialPageRoute(builder: (context) => const SignupScreen()),
                                    //   );
                                    // });
                                     Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const SignupScreen()),
                                      );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    fixedSize: const Size(200, 50),
                                    backgroundColor: Colors.white,
                                  ),
                                  child: const Text('SIGN UP',
                                  style: TextStyle(
                                    color: Colors.black
                                  ),),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
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
