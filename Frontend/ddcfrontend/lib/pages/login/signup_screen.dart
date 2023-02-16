import 'package:flutter/material.dart';
import '../canvas/bottom_signup.dart';
import '../canvas/top.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var nameController = TextEditingController();
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var confirmPassword = TextEditingController();

    Widget buildName() {
      return Container(
        height: 50,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: TextFormField(
          validator: (value) {
            if(value == null || value.isEmpty) {
              return "Enter your name";
            }
            return null;
          },
          controller: nameController,
          decoration: const InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(
              Icons.person_outline,
            ),
            hintText: 'Name'
          ),
        ),
      );
    }

    Widget buildEmail() {
      return Container(
        height: 50,
        decoration: const BoxDecoration(
          color: Colors.white,
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

    Widget buildCPassword() {
      return Container(
        height: 50,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: TextFormField(
          validator: (value) {
            if(value == null || value.isEmpty) {
              return "Enter correct password";
            }
            return null;
          },
          controller: confirmPassword,
          decoration: const InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(top: 14),
            prefixIcon: Icon(
              Icons.lock_outline_rounded,
            ),
            hintText: 'Confirm Password'
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
                    bottom: 490,
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
                            size: Size(MediaQuery.of(context).size.width, 450),
                            painter: TopArcPainterBottomSignup(),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 28),
                            child: Align(
                              alignment: Alignment.center,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const SizedBox(height: 5,),
                                  buildName(),
                                  const SizedBox(height: 20,),
                                  buildEmail(),
                                  const SizedBox(height: 20,),
                                  buildPassword(),
                                  const SizedBox(height: 20,),
                                  buildCPassword(),
                                  const SizedBox(height: 20,),
                                  SizedBox(
                                    width: double.infinity,
                                    height: 50,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        if (nameController.text.isNotEmpty && emailController.text.isNotEmpty && passwordController.text.isNotEmpty && confirmPassword.text.isNotEmpty) {
                                          // ignore: todo
                                          // TODO: implement authentication logic
                                        }
                                      },
                                      child: const Text('SIGN UP',
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
