import 'package:flutter/material.dart';
import 'package:intuc/utils/dynamic_sizing/dynamic_sizing.dart';
import 'package:intuc/view/widgets/widgets.dart';

class TradeUnionPage extends StatelessWidget {
  const TradeUnionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Union",
          style: TextStyle(
              fontSize: R.rw(20, context), fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 2,
        shadowColor: Colors.amberAccent,
      ),
      body: Container(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/bg 1.png"), fit: BoxFit.cover),
        ),
        child: ListView.separated(
            padding: EdgeInsets.all(R.rw(5, context)),
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.all(R.rw(5, context)),
                child: Container(
                  padding: EdgeInsets.all(R.rw(10, context)),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      R.rw(10, context),
                    ),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/images/Logo.png",
                        scale: 9,
                      ),
                      SizedBox(
                        width: R.rw(15, context),
                      ),
                      Flexible(
                        child: Text(
                          unions[index],
                        ),
                      ),
                      const Icon(Icons.arrow_forward_ios_outlined)
                    ],
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox();
            },
            itemCount: unions.length),
      ),
    );
  }
}
