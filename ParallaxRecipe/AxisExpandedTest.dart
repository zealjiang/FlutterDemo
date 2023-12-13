import 'package:flutter/material.dart';

class AxisExpandedTest extends StatelessWidget {
  const AxisExpandedTest({super.key});

  @override
  Widget build(BuildContext context) {
    // return Column(
    //   crossAxisAlignment: CrossAxisAlignment.center,
    //   //mainAxisAlignment: MainAxisAlignment.center,
    //   children: [
    //     Expanded(
    //       child: Image.asset('images/lake.jpg'),
    //     ),
    //     Expanded(
    //       flex: 2,
    //       child: Image.asset('images/lake.jpg'),
    //     ),
    //     Expanded(
    //       child: Image.asset('images/lake.jpg'),
    //     ),
    //   ],
    // );


/*    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.green[500]),
        Icon(Icons.star, color: Colors.black),
        Icon(Icons.star, color: Colors.black),
      ],
    );*/

       return ratings;
  }

}

final stars = Row(
  mainAxisSize: MainAxisSize.min,
  children: [
    Icon(Icons.star, color: Colors.green[500]),
    Icon(Icons.star, color: Colors.green[500]),
    Icon(Icons.star, color: Colors.green[500]),
    const Icon(Icons.star, color: Colors.black),
    const Icon(Icons.star, color: Colors.black),
  ],
);

final ratings = Container(
  padding: const EdgeInsets.all(20),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      stars,
      const Text(
        '170 Reviews',
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w800,
          fontFamily: 'Roboto',
          letterSpacing: 0.5,
          fontSize: 20,
        ),
      ),
    ],
  ),
);

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Center(
          child: AxisExpandedTest(),
        ),
      ),
    ),
  );
}