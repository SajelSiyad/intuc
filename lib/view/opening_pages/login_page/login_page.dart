import 'package:flutter/material.dart';
import 'package:intuc/utils/dynamic_sizing/dynamic_sizing.dart';
import 'package:intuc/view/opening_pages/login_page/reset_password_page.dart';
import 'package:intuc/view/opening_pages/signup_page/signup_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isShowPassword = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/bg 1.png"), fit: BoxFit.cover),
          ),
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(
                  height: R.rw(80, context),
                ),
                Image.asset(
                  "assets/images/Logo.png",
                  scale: R.rw(4, context),
                ),
                SizedBox(
                  height: R.rw(40, context),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(198, 0, 0, 0),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(
                          R.rw(30, context),
                        ),
                        topRight: Radius.circular(
                          R.rw(30, context),
                        ),
                      ),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: R.rw(25, context)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: R.rw(50, context),
                          ),
                          TextField(
                            style: const TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  R.rw(15, context),
                                ),
                              ),
                              labelText: "Email",
                              labelStyle: const TextStyle(color: Colors.white),
                              prefixIcon: const Icon(
                                Icons.email_outlined,
                                color: Colors.white70,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: R.rw(20, context),
                          ),
                          TextField(
                            style: const TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  R.rw(15, context),
                                ),
                              ),
                              labelText: "Password",
                              labelStyle: const TextStyle(color: Colors.white),
                              prefixIcon: const Icon(
                                Icons.lock,
                                color: Colors.white70,
                              ),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    isShowPassword = !isShowPassword;
                                  });
                                },
                                icon: isShowPassword
                                    ? const Icon(
                                        Icons.visibility_off_outlined,
                                        color: Colors.white70,
                                      )
                                    : const Icon(Icons.visibility_outlined),
                                color: Colors.white70,
                              ),
                            ),
                            obscureText: isShowPassword,
                          ),
                          Row(
                            children: [
                              const Text(
                                "Don't have an account",
                                style: TextStyle(color: Colors.white70),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const SignupPage(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  "Sign Up",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            height: R.rw(50, context),
                            width: MediaQuery.sizeOf(context).width,
                            decoration: BoxDecoration(
                                color: const Color(0xffEF831A),
                                borderRadius:
                                    BorderRadius.circular(R.rw(18, context))),
                            child: Center(
                              child: Text(
                                "Log In",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: R.rw(18, context),
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: R.rw(5, context),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const ReserPasswordPage(),
                                ),
                              );
                            },
                            child: const Text(
                              "Forgot Password?",
                              style: TextStyle(
                                color: Colors.blue,
                              ),
                            ),
                          ),
                          Center(
                            child: Text(
                              "OR",
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: R.rw(18, context),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: R.rw(20, context),
                          ),
                          Container(
                            height: R.rw(50, context),
                            width: MediaQuery.sizeOf(context).width,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.circular(R.rw(18, context))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                    "assets/images/google-g-2015-logo-png-transparent 1.png"),
                                SizedBox(
                                  width: R.rw(10, context),
                                ),
                                Text(
                                  "Sign in with Google",
                                  style: TextStyle(
                                      fontSize: R.rw(18, context),
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: R.rw(20, context),
                          ),
                          Container(
                            height: R.rw(50, context),
                            width: MediaQuery.sizeOf(context).width,
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius:
                                    BorderRadius.circular(R.rw(18, context))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/images/apple-emblem 1.png"),
                                SizedBox(
                                  width: R.rw(10, context),
                                ),
                                Text(
                                  "Sign in with Apple",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: R.rw(18, context),
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
