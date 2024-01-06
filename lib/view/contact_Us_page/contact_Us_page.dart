import 'package:flutter/material.dart';
import 'package:intuc/utils/dynamic_sizing/dynamic_sizing.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Contact Us",
          style: TextStyle(
              fontSize: R.rw(20, context), fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/payment_bg.png"),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: EdgeInsets.all(R.rw(20, context)),
          child: Container(
            padding: EdgeInsets.all(R.rw(15, context)),
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                R.rw(20, context),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Center(
                      child: Image.asset(
                        "assets/images/Logo.png",
                        scale: 8,
                      ),
                    ),
                    SizedBox(
                      height: R.rw(5, context),
                    ),
                    Text(
                      "Indian National Trade Union Congress, ",
                      style: TextStyle(
                          fontSize: R.rw(15, context),
                          color: const Color(0xff1A369B),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Thrissur District Committee",
                      style: TextStyle(
                        fontSize: R.rw(15, context),
                        color: const Color(0xff1A369B),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: R.rw(30, context),
                ),
                Text(
                  "SUNDARAN KUNNATHULLY",
                  style: TextStyle(
                      fontSize: R.rw(15, context),
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0),
                ),
                SizedBox(
                  height: R.rw(10, context),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.phone_in_talk,
                      color: const Color(0xff1A369B),
                      size: R.rw(30, context),
                    ),
                    SizedBox(
                      width: R.rw(5, context),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ": +91 9645084747 / +91 8547268933",
                          style: TextStyle(
                              fontSize: R.rw(15, context),
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          ": 0487 2422151",
                          style: TextStyle(
                              fontSize: R.rw(15, context),
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: R.rw(20, context),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: const Color(0xff1A369B),
                      size: R.rw(30, context),
                    ),
                    SizedBox(
                      width: R.rw(5, context),
                    ),
                    Text(
                      "INTUC District Committee Office\nKuruppam Road, Thrissur-01",
                      style: TextStyle(
                          fontSize: R.rw(15, context),
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: R.rw(20, context),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.email,
                      color: const Color(0xff1A369B),
                      size: R.rw(30, context),
                    ),
                    SizedBox(
                      width: R.rw(5, context),
                    ),
                    Text(
                      "trichurintuc@gmail.com\nsundarankunnathully1@gmail.com",
                      style: TextStyle(
                          fontSize: R.rw(15, context),
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: R.rw(20, context),
                ),
                const Divider(),
                SizedBox(
                  height: R.rw(20, context),
                ),
                Text(
                  "PLUS IT BUISINESS PARK",
                  style: TextStyle(
                      color: const Color(0xff1A369B),
                      fontSize: R.rw(15, context),
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0),
                ),
                SizedBox(
                  height: R.rw(20, context),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.phone_in_talk,
                      color: const Color(0xff1A369B),
                      size: R.rw(30, context),
                    ),
                    SizedBox(
                      width: R.rw(5, context),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ": +91 9745077717 / +91 9496999551",
                          style: TextStyle(
                              fontSize: R.rw(15, context),
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: R.rw(20, context),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: const Color(0xff1A369B),
                      size: R.rw(30, context),
                    ),
                    SizedBox(
                      width: R.rw(5, context),
                    ),
                    Text(
                      "RVK Tower, High Road\nSouth Bazar, Erinjery Angady,\nPallikkulam, Thrissur, Kerala 680001",
                      style: TextStyle(
                          fontSize: R.rw(15, context),
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(
                  height: R.rw(20, context),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.email,
                      color: const Color(0xff1A369B),
                      size: R.rw(30, context),
                    ),
                    SizedBox(
                      width: R.rw(5, context),
                    ),
                    Text(
                      "info@plusitpark.com",
                      style: TextStyle(
                          fontSize: R.rw(15, context),
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
