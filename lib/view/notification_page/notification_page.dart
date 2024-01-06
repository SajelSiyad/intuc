import 'package:flutter/material.dart';
import 'package:intuc/utils/dynamic_sizing/dynamic_sizing.dart';
import 'package:intuc/view/contact_Us_page/contact_Us_page.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notification",
          style: TextStyle(
              fontSize: R.rw(20, context), fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 3,
        shadowColor: Colors.black,
      ),
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/payment_bg.png"),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: EdgeInsets.all(R.rw(13, context)),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                R.rw(10, context),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: R.rw(10, context),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ContactUsPage(),
                      ),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(R.rw(3, context)),
                    decoration:
                        const BoxDecoration(color: Color.fromARGB(20, 0, 0, 0)),
                    child: const Text(
                      "Today",
                      style: TextStyle(
                          color: Colors.black45, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(
                    R.rw(10, context),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "You have a Event at 2:30pm today",
                        style: TextStyle(
                            fontSize: R.rw(15, context),
                            fontWeight: FontWeight.w500),
                      ),
                      const Text(
                          "Event is conducted at thrissur in ABC Hall about the change in keralas Educational system"),
                      Text(
                        "1 hour ago",
                        style: TextStyle(
                            fontSize: R.rw(10, context),
                            fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        height: R.rw(10, context),
                      ),
                      Text(
                        "Today is a special day",
                        style: TextStyle(
                            fontSize: R.rw(15, context),
                            fontWeight: FontWeight.w500),
                      ),
                      const Text(
                          "Event is conducted at thrissur in ABC Hall about the change in keralas Educational system"),
                      Text(
                        "3 hour ago",
                        style: TextStyle(
                            fontSize: R.rw(10, context),
                            fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        height: R.rw(10, context),
                      ),
                      Text(
                        "Its your birthday",
                        style: TextStyle(
                            fontSize: R.rw(15, context),
                            fontWeight: FontWeight.w500),
                      ),
                      const Text("Get your wishes from your community"),
                      Text(
                        "4 hour ago",
                        style: TextStyle(
                            fontSize: R.rw(10, context),
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(R.rw(3, context)),
                  decoration:
                      const BoxDecoration(color: Color.fromARGB(20, 0, 0, 0)),
                  child: const Text(
                    "Yesterday",
                    style: TextStyle(
                        color: Colors.black45, fontWeight: FontWeight.w500),
                  ),
                ),
                SizedBox(
                  height: R.rw(10, context),
                ),
                Padding(
                  padding: EdgeInsets.all(R.rw(10, context)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Today is Rahul Gandhi’s Birthday",
                        style: TextStyle(
                            fontSize: R.rw(15, context),
                            fontWeight: FontWeight.w500),
                      ),
                      const Text("Get your wishes from your community"),
                      Text(
                        "4 hour ago",
                        style: TextStyle(
                            fontSize: R.rw(10, context),
                            fontWeight: FontWeight.w300),
                      ),
                    ],
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
