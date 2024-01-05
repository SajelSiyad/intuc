import 'package:flutter/material.dart';
import 'package:intuc/utils/dynamic_sizing/dynamic_sizing.dart';
import 'package:intuc/view/trade_union_page/trade_uion_page.dart';

class SlogansPage extends StatelessWidget {
  const SlogansPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5,
        shadowColor: Colors.black,
        title: Text(
          "Slogans",
          style: TextStyle(
              fontSize: R.rw(20, context), fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/payment_bg.png"),
              fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(R.rw(15, context)),
                child: Container(
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      R.rw(15, context),
                    ),
                  ),
                  child: Column(
                    children: [
                      ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                          padding: EdgeInsets.all(
                            R.rw(10, context),
                          ),
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const TradeUnionPage(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    "Slogan 1",
                                    style: TextStyle(
                                        fontSize: R.rw(17, context),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const Text(
                                    "To organise society in such a manner as to ensure full\n employment and the best utilisation of its manpower and other resources")
                              ],
                            );
                          },
                          separatorBuilder: (context, index) {
                            return const Divider();
                          },
                          itemCount: 10)
                    ],
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
