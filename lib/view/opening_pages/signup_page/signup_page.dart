import 'package:flutter/material.dart';
import 'package:intuc/utils/dynamic_sizing/dynamic_sizing.dart';
import 'package:intuc/view/opening_pages/signup_page/otp_confirmation_page.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool _isShowPassword = false;
  bool _isShowfmPassword = false;

  String lbtext = "Name";

  Icon priIcon = const Icon(
    Icons.person,
    color: Colors.white70,
  );

  List<String> items = [
    "Thrissur",
    "Malappuram",
    "Eranakulam",
    "Idukki",
    "Palakkad"
  ];

  String dropValue = "";
  String district = "District";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/bg 1.png"), fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: R.rw(60, context),
                ),
                Center(
                  child: Image.asset(
                    "assets/images/Logo.png",
                    scale: R.rw(4, context),
                  ),
                ),
                SizedBox(
                  height: R.rw(30, context),
                ),
                Container(
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
                        EdgeInsets.symmetric(horizontal: R.rw(20, context)),
                    child: Column(
                      children: [
                        SizedBox(
                          height: R.rw(30, context),
                        ),
                        SpTextField(lbtext: lbtext, priIcon: priIcon),
                        const SpTextField(
                          lbtext: "Email",
                          priIcon: Icon(
                            Icons.email_outlined,
                            color: Colors.white70,
                          ),
                        ),
                        const SpTextField(
                          lbtext: "+91-",
                          priIcon: Icon(
                            Icons.call,
                            color: Colors.white70,
                          ),
                        ),
                        const SpTextField(
                          lbtext: "Birthday",
                          priIcon: Icon(
                            Icons.card_giftcard,
                            color: Colors.white70,
                          ),
                        ),
                        DropdownButtonFormField(
                          isDense: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  R.rw(15, context),
                                ),
                              ),
                            ),
                          ),
                          elevation: 10,
                          dropdownColor: Colors.black,
                          style: TextStyle(
                              color: Colors.white, fontSize: R.rw(16, context)),
                          hint: const Text(
                            "Lok Sabha",
                            style: TextStyle(color: Colors.white70),
                          ),
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: items.map((String item) {
                            return DropdownMenuItem(
                              value: item,
                              child: Text(item),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              dropValue = value!;
                            });
                          },
                        ),
                        SizedBox(
                          height: R.rw(20, context),
                        ),
                        DropdownButtonFormField(
                          isDense: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  R.rw(15, context),
                                ),
                              ),
                            ),
                          ),
                          elevation: 10,
                          dropdownColor: Colors.black,
                          style: TextStyle(
                              color: Colors.white, fontSize: R.rw(16, context)),
                          hint: Text(
                            district,
                            style: const TextStyle(color: Colors.white70),
                          ),
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: items.map((String item) {
                            return DropdownMenuItem(
                              value: item,
                              child: Text(item),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              dropValue = value!;
                            });
                          },
                        ),
                        SizedBox(
                          height: R.rw(20, context),
                        ),
                        DropdownButtonFormField(
                          isDense: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  R.rw(15, context),
                                ),
                              ),
                            ),
                          ),
                          elevation: 10,
                          dropdownColor: Colors.black,
                          style: TextStyle(
                              color: Colors.white, fontSize: R.rw(16, context)),
                          hint: const Text(
                            "Legislative Assembly",
                            style: TextStyle(color: Colors.white70),
                          ),
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: items.map((String item) {
                            return DropdownMenuItem(
                              value: item,
                              child: Text(item),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              dropValue = value!;
                            });
                          },
                        ),
                        SizedBox(
                          height: R.rw(20, context),
                        ),
                        DropdownButtonFormField(
                          isDense: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(
                                  R.rw(15, context),
                                ),
                              ),
                            ),
                          ),
                          elevation: 10,
                          dropdownColor: Colors.black,
                          style: TextStyle(
                              color: Colors.white, fontSize: R.rw(16, context)),
                          hint: const Text(
                            "Panchayat",
                            style: TextStyle(color: Colors.white70),
                          ),
                          icon: const Icon(Icons.keyboard_arrow_down),
                          items: items.map((String item) {
                            return DropdownMenuItem(
                              value: item,
                              child: Text(item),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              dropValue = value!;
                            });
                          },
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
                                  _isShowPassword = !_isShowPassword;
                                });
                              },
                              icon: _isShowPassword
                                  ? const Icon(
                                      Icons.visibility_off_outlined,
                                      color: Colors.white70,
                                    )
                                  : const Icon(Icons.visibility_outlined),
                              color: Colors.white70,
                            ),
                          ),
                          obscureText: _isShowPassword,
                        ),
                        SizedBox(
                          height: R.rw(5, context),
                        ),
                        const Text(
                          "Use 6 characters with a mix of letters,numbers & symbols",
                          style: TextStyle(color: Colors.white),
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
                            labelText: "Confirm Password",
                            labelStyle: const TextStyle(color: Colors.white),
                            prefixIcon: const Icon(
                              Icons.lock,
                              color: Colors.white70,
                            ),
                            suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _isShowfmPassword = !_isShowfmPassword;
                                });
                              },
                              icon: _isShowfmPassword
                                  ? const Icon(
                                      Icons.visibility_off_outlined,
                                      color: Colors.white70,
                                    )
                                  : const Icon(Icons.visibility_outlined),
                              color: Colors.white70,
                            ),
                          ),
                          obscureText: _isShowfmPassword,
                        ),
                        SizedBox(
                          height: R.rw(30, context),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const OtpConfirmationPage(),
                              ),
                            );
                          },
                          child: Container(
                            height: R.rw(50, context),
                            width: MediaQuery.sizeOf(context).width,
                            decoration: BoxDecoration(
                              color: const Color(0xffEF831A),
                              borderRadius: BorderRadius.circular(
                                R.rw(18, context),
                              ),
                            ),
                            child: Center(
                              child: Text(
                                "Continue",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: R.rw(18, context),
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: R.rw(50, context),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SpTextField extends StatelessWidget {
  const SpTextField({
    super.key,
    required this.lbtext,
    required this.priIcon,
  });

  final String lbtext;
  final Icon priIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                R.rw(15, context),
              ),
            ),
            labelText: lbtext,
            labelStyle: const TextStyle(color: Colors.white),
            prefixIcon: priIcon,
          ),
        ),
        SizedBox(
          height: R.rw(20, context),
        ),
      ],
    );
  }
}
