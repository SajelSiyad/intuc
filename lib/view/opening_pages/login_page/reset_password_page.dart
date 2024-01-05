import 'package:flutter/material.dart';
import 'package:intuc/utils/dynamic_sizing/dynamic_sizing.dart';

class ReserPasswordPage extends StatelessWidget {
  const ReserPasswordPage({super.key});

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
                  height: R.rw(60, context),
                ),
                Image.asset(
                  "assets/images/Logo.png",
                  scale: R.rw(4, context),
                ),
                SizedBox(
                  height: R.rw(30, context),
                ),
                Padding(
                  padding: EdgeInsets.all(R.rw(30, context)),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(198, 0, 0, 0),
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          R.rw(15, context),
                        ),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(R.rw(30, context)),
                      child: Column(children: [
                        Text(
                          "Reset Your Password",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: R.rw(18, context),
                          ),
                        ),
                        SizedBox(
                          height: R.rw(30, context),
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
                          height: R.rw(30, context),
                        ),
                        Container(
                          height: R.rw(45, context),
                          width: MediaQuery.sizeOf(context).width,
                          decoration: BoxDecoration(
                              color: const Color(0xffEF831A),
                              borderRadius:
                                  BorderRadius.circular(R.rw(10, context))),
                          child: Center(
                            child: Text(
                              "Reset Password",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: R.rw(16, context),
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      ]),
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
