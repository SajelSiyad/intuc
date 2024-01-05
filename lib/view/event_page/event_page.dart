import 'package:flutter/material.dart';
import 'package:intuc/utils/dynamic_sizing/dynamic_sizing.dart';
import 'package:intuc/view/slogans_page/slogans_page.dart';

class EventPage extends StatelessWidget {
  const EventPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: Colors.black,
        elevation: 5,
        title: Text(
          "Events",
          style: TextStyle(
              fontSize: R.rw(20, context), fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/payment_bg.png"),
                fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.sizeOf(context).height,
                child: ListView.builder(
                  padding: EdgeInsets.all(R.rw(15, context)),
                  itemCount: 10,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                          borderRadius:
                              BorderRadius.circular(R.rw(15, context))),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: R.rw(20, context)),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: R.rw(20, context)),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const SlogansPage(),
                                    ),
                                  );
                                },
                                child: Container(
                                  height: R.rw(170, context),
                                  width: R.rw(150, context),
                                  decoration: BoxDecoration(
                                    // color: Colors.black45,
                                    image: const DecorationImage(
                                        image: NetworkImage(
                                            "https://pbs.twimg.com/media/GCZ3YrUXwAACBCo?format=jpg&name=large"),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(
                                      R.rw(15, context),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: R.rw(20, context),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "State Conventions",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: R.rw(5, context),
                                ),
                                SizedBox(
                                  width: R.rw(100, context),
                                  child: Text(
                                      "INTUC State convention was held at Thrissur On  29th and 30th Dec"),
                                ),
                                SizedBox(
                                  height: R.rw(10, context),
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/facebook.png",
                                      scale: 5,
                                    ),
                                    SizedBox(
                                      width: R.rw(10, context),
                                    ),
                                    Image.asset(
                                      "assets/images/youtube.png",
                                      scale: 5,
                                    )
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
