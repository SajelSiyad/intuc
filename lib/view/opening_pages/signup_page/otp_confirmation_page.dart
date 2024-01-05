import 'package:flutter/material.dart';
import 'package:intuc/utils/dynamic_sizing/dynamic_sizing.dart';
import 'package:intuc/view/payment/payment_page.dart';
import 'package:pinput/pinput.dart';

class OtpConfirmationPage extends StatelessWidget {
  const OtpConfirmationPage({super.key});

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
                Expanded(
                  child: Container(
                    width: MediaQuery.sizeOf(context).width,
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
                    child: Column(children: [
                      SizedBox(
                        height: R.rw(30, context),
                      ),
                      Pinput(
                        autofocus: true,
                        defaultPinTheme: PinTheme(
                            width: R.rw(50, context),
                            height: R.rw(50, context),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(
                                R.rw(10, context),
                              ),
                            ),
                            textStyle: const TextStyle(color: Colors.white)),
                      ),
                      SizedBox(
                        height: R.rw(30, context),
                      ),
                      Text(
                        "Haven’t received the Verification  code ? ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: R.rw(13, context),
                            fontWeight: FontWeight.w300),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Resend",
                          style: TextStyle(
                              color: const Color(0xffEF831A),
                              fontSize: R.rw(16, context),
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      SizedBox(
                        height: R.rw(250, context),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: R.rw(30, context)),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const PaymentPage(),
                              ),
                            );
                          },
                          child: Container(
                            height: R.rw(45, context),
                            width: MediaQuery.sizeOf(context).width,
                            decoration: BoxDecoration(
                                color: const Color(0xffEF831A),
                                borderRadius:
                                    BorderRadius.circular(R.rw(18, context))),
                            child: Center(
                              child: Text(
                                "Verify",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: R.rw(17, context),
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]),
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
