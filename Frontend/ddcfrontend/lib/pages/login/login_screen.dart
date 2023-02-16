import 'package:erecord/pages/canvas/bottom_login.dart';
import 'package:flutter/material.dart';
import '../canvas/top.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();

    Widget buildEmail() {
      return Container(
        height: 50,
        decoration: const BoxDecoration(
          color: Colors.white,
          // boxShadow: [
          //   BoxShadow(
          //     offset: const Offset(3, 3),
          //     blurRadius: 6,
          //     color: Colors.grey.shade400,
          //   )
          // ]
        ),
        child: TextFormField(
          validator: (value) {
            if(value == null || value.isEmpty) {
              return "Enter your email";
            }
            return null;
          },
          controller: emailController,
          decoration: const InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(
              Icons.email_outlined,
            ),
            hintText: 'Email'
          ),
        ),
      );
    }

    Widget buildPassword() {
      return Container(
        height: 50,
        decoration: const BoxDecoration(
          color: Colors.white,
          // boxShadow: [
          //   BoxShadow(
          //     offset: const Offset(3, 3),
          //     blurRadius: 6,
          //     color: Colors.grey.shade400,
          //   )
          // ]
        ),
        child: TextFormField(
          validator: (value) {
            if(value == null || value.isEmpty) {
              return "Enter your password";
            }
            return null;
          },
          controller: passwordController,
          decoration: const InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(
              Icons.lock_outline_rounded,
            ),
            hintText: 'Password'
          ),
        ),
      );
    }

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              // flex: 1,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    bottom: 390,
                    child: CustomPaint(
                      size: Size(MediaQuery.of(context).size.width, 100),
                      painter: TopArcPainterTop(),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Stack(
                        children: [
                          CustomPaint(
                            size: Size(MediaQuery.of(context).size.width, 350),
                            painter: TopArcPainterBottomLogin(),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 28),
                            child: Align(
                              alignment: Alignment.center,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const SizedBox(height: 5,),
                                  buildEmail(),
                                  const SizedBox(height: 20,),
                                  buildPassword(),
                                  const SizedBox(height: 20,),
                                  SizedBox(
                                    width: double.infinity,
                                    height: 50,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
                                          // ignore: todo
                                          // TODO: implement authentication logic
                                        }
                                      },
                                      child: const Text('LOGIN',
                                        style: TextStyle(
                                          fontSize: 16
                                        ),
                                      ),
                                    ),
                                  )
                                ]
                              ),  
                            )

                          )
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
    );
  }
}
