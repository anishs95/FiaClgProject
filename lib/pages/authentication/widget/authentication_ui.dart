import 'package:fia/common/common.dart';
import 'package:fia/pages/authentication/pages/login_page.dart';
import 'package:fia/pages/authentication/pages/sign-up.dart';
import 'package:fia/pages/authentication/widget/custom_widget.dart';
import 'package:fia/pages/authentication/widget/fade_animationtest.dart';
import 'package:flutter/material.dart';

class AuthenticationUI extends StatefulWidget {
  const AuthenticationUI({super.key});

  @override
  State<AuthenticationUI> createState() => _AuthenticationUIState();
}

class _AuthenticationUIState extends State<AuthenticationUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height ,
              width: MediaQuery.of(context).size.width,
              child: Image.asset(
                "assets/images/img.png",
                filterQuality: FilterQuality.high,
                fit: BoxFit.cover,
              )),
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: SizedBox(
              child: Column(
                children: [
                  FadeInAnimation(
                    delay: 1,
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/appLogo.png"))),
                    ),
                  ),
                  const FadeInAnimation(
                    delay: 1.5,
                    child: Text(
                      "FIA BAND",
                      style: TextStyle(
                          fontSize: 30,
                          fontFamily: "Urbanist",
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  FadeInAnimation(
                    delay: 2,
                    child: CustomElevatedButton(
                      message: "Login",
                      function: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => LoginPage()));
                      },
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  FadeInAnimation(
                    delay: 2.5,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignupPage()));
                        },
                        style: ButtonStyle(
                            side: const MaterialStatePropertyAll(
                                BorderSide(color: Colors.black)),
                            shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            fixedSize: const MaterialStatePropertyAll(
                                Size.fromWidth(370)),
                            padding: const MaterialStatePropertyAll(
                              EdgeInsets.symmetric(vertical: 20),
                            ),
                            backgroundColor:
                                const MaterialStatePropertyAll(Colors.white)),
                        child: const Text(
                          "Register",
                          style: TextStyle(
                              fontSize: 15,
                              fontFamily: "Urbanist-SemiBold",
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        )),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  FadeInAnimation(
                    delay: 2.5,
                    child: TextButton(
                      onPressed: () {},
                      child: Text("Continue as guest",
                          style: Common().mediumTheme),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
