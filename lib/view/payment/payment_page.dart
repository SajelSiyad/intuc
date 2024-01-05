import 'package:flutter/material.dart';
import 'package:intuc/utils/dynamic_sizing/dynamic_sizing.dart';
import 'package:intuc/view/event_page/event_page.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 22, 22, 22),
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.black,
        elevation: 5,
        title: Text(
          "Contribute My Part",
          style: TextStyle(
              fontSize: R.rw(20, context), fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/payment_bg.png"),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              SizedBox(
                height: R.rw(80, context),
              ),
              Image.asset(
                "assets/images/Logo.png",
                scale: R.rw(3, context),
              ),
              SizedBox(
                height: R.rw(30, context),
              ),
              TextField(
                textAlign: TextAlign.center,
                autofocus: true,
                keyboardType: TextInputType.number,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: R.rw(35, context),
                    fontWeight: FontWeight.w700),
                decoration: const InputDecoration(
                    hintText: "₹0",
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                    border: InputBorder.none),
              ),
              SizedBox(
                height: R.rw(80, context),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: R.rw(60, context),
                ),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const EventPage(),
                      ),
                    );
                  },
                  child: Container(
                    height: R.rw(50, context),
                    decoration: BoxDecoration(
                      color: const Color(0xffEF831A),
                      borderRadius: BorderRadius.circular(
                        R.rw(10, context),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Pay Now",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: R.rw(18, context),
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
