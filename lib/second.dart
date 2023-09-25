import 'package:flutter/material.dart';

class second extends StatefulWidget {
  const second({super.key});

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> with TickerProviderStateMixin {
  List<String> asset = [
    'images/img0.webp',
    'images/img1.webp',
    'images/img2.webp'
  ];
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      PageView.builder(
        onPageChanged: (value) {
          currentindex = value;
          setState(() {});
        },
        itemCount: asset.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(asset[index]), fit: BoxFit.cover)),
          );
        },
      ),
      Padding(
        padding: const EdgeInsets.only(top: 650, left: 180),
        child: Row(
          children: [
            TabPageSelector(
              controller: TabController(
                  length: asset.length,
                  initialIndex: currentindex,
                  vsync: this),
            ),
            SizedBox(
              width: 50,
            ),
            Icon(
              Icons.forward,
              color: Colors.white,
              size: 30,
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.favorite,
              color: Colors.white,
              size: 30,
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 700, left: 10),
        child: Row(
          children: [
            Icon(
              Icons.star,
              color: Colors.white,
            ),
            Icon(
              Icons.star,
              color: Colors.white,
            ),
            Icon(
              Icons.star,
              color: Colors.white,
            ),
            Icon(
              Icons.star_half,
              color: Colors.white,
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 726, left: 10),
        child: Column(
          children: [
            Text(
              "Alliance francaise Dubai",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10, top: 758),
        child: Text(
          "Complete tele",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10, top: 800),
        child: Text(
          "Starting per person",
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w400, color: Colors.white),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10, top: 820),
        child: Text(
          "₹2599",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 787, left: 200),
        child: Container(
          width: 170,
          height: 60,
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Center(
            child: Text(
              'Select Room',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      )
    ]));
  }
}
