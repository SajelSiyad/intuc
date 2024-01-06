import 'package:flutter/material.dart';
import 'package:intuc/utils/dynamic_sizing/dynamic_sizing.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  List<String> items = [
    "Thrissur",
    "Malappuram",
    "Eranakulam",
    "Idukki",
    "Palakkad"
  ];
  String dropValue = "";
  String district = "District";
  String lbtext = "Name";

  Icon priIcon = const Icon(
    Icons.person,
    color: Colors.black87,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          "Edit Profile",
          style: TextStyle(
              fontSize: R.rw(20, context), fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/payment_bg.png"),
              fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(R.rw(15, context)),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  R.rw(20, context),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: R.rw(20, context),
                  ),
                  CircleAvatar(
                    radius: R.rw(40, context),
                    backgroundImage: const NetworkImage(
                        "https://res.cloudinary.com/dkplc2mbj/image/upload/v1683007303/Rahul_Gandhi_Congress_Sandesh_e28174c49c.jpg"),
                  ),
                  const Text(
                    "Profile Photo",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  Padding(
                    padding: EdgeInsets.all(R.rw(20, context)),
                    child: Column(
                      children: [
                        SpTextField(lbtext: lbtext, priIcon: priIcon),
                        const SpTextField(
                          lbtext: "Email",
                          priIcon: Icon(
                            Icons.email_outlined,
                            color: Colors.black87,
                          ),
                        ),
                        const SpTextField(
                          lbtext: "+91-",
                          priIcon: Icon(
                            Icons.call,
                            color: Colors.black87,
                          ),
                        ),
                        const SpTextField(
                          lbtext: "Birthday",
                          priIcon: Icon(
                            Icons.card_giftcard,
                            color: Colors.black87,
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
                          dropdownColor: Colors.black87,
                          style: TextStyle(
                              color: Colors.white, fontSize: R.rw(16, context)),
                          hint: const Text(
                            "Lok Sabha",
                            style: TextStyle(color: Colors.black87),
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
                          dropdownColor: Colors.black87,
                          style: TextStyle(
                              color: Colors.white, fontSize: R.rw(16, context)),
                          hint: Text(
                            district,
                            style: const TextStyle(color: Colors.black87),
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
                          dropdownColor: Colors.black87,
                          style: TextStyle(
                              color: Colors.white, fontSize: R.rw(16, context)),
                          hint: const Text(
                            "Legislative Assembly",
                            style: TextStyle(color: Colors.black87),
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
                          dropdownColor: Colors.black87,
                          style: TextStyle(
                              color: Colors.white, fontSize: R.rw(16, context)),
                          hint: const Text(
                            "Panchayat",
                            style: TextStyle(color: Colors.black87),
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
                      ],
                    ),
                  ),
                  SizedBox(
                    height: R.rw(20, context),
                  ),
                ],
              ),
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
          style: const TextStyle(color: Colors.black87),
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                R.rw(15, context),
              ),
            ),
            labelText: lbtext,
            labelStyle: const TextStyle(color: Colors.black87),
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
