import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LotteryApp(),
    ),
  );
}
class LotteryApp extends StatefulWidget {
  const LotteryApp({super.key});
  @override
  State<LotteryApp> createState() => _LotteryAppState();
}
class _LotteryAppState extends State<LotteryApp> {
  Random a = Random();
  Random b = Random();
  Random c = Random();
  var a1 = 0;
  var b1 = 0;
  var c1 = 0;
  var aa;
  var bb;
  var cc;
  var dd;
  Random r = Random();
  Color co = const Color(0xff926c80);
  Color cl = const Color(0xffac7d88);
  Color cq = const Color(0xffdeb6ab);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lottery App"),
        centerTitle: true,
        backgroundColor: co,
        actions: [
          InkWell(
            onTap: () {
              setState(() {
                co = Color.fromARGB(
                  r.nextInt(256),
                  r.nextInt(256),
                  r.nextInt(256),
                  r.nextInt(256),
                );
                cl = co;
                cq = Color.fromARGB(
                  r.nextInt(256),
                  r.nextInt(256),
                  r.nextInt(256),
                  r.nextInt(256),
                );
              });
            },
            child: const Icon(Icons.spoke_outlined),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 6,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 3.5,
            width: MediaQuery.of(context).size.width,
            color: cl,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 12,
                  width: MediaQuery.of(context).size.width / 4.5,
                  decoration: BoxDecoration(
                    color: cq,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "$a1",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 12,
                  width: MediaQuery.of(context).size.width / 4.5,
                  decoration: BoxDecoration(
                    color: cq,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "$b1",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 12,
                  width: MediaQuery.of(context).size.width / 4.5,
                  decoration: BoxDecoration(
                    color: cq,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "$c1",
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 4,
          ),
          InkWell(
            onTap: () {
              setState(() {
                a1 = a.nextInt(10);
                b1 = b.nextInt(10);
                c1 = c.nextInt(10);
              });
            },
            child: Container(
              height: MediaQuery.of(context).size.height / 13,
              width: MediaQuery.of(context).size.width / 3,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: cq,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: co, width: 3),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black45,
                    blurRadius: 10,
                  ),
                ],
              ),
              child: const Text(
                "Get Lottery",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
