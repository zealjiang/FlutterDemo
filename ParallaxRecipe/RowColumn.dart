import 'package:flutter/material.dart';

Widget _buildImageColumn() {
  return Container(
    decoration: const BoxDecoration(
      color: Colors.black26,
    ),
    child: Column(
      children: [
        _buildImageRow(1),
        _buildImageRow(3),
      ],
    ),
  );
}

Widget _buildDecoratedImage(int imageIndex) => Expanded(
  child: Container(
    decoration: BoxDecoration(
      border: Border.all(width: 10, color: Colors.black38),
      borderRadius: const BorderRadius.all(Radius.circular(8)),
    ),
    margin: const EdgeInsets.all(4),
    child: Image.asset('images/pic$imageIndex.jpg'),
  ),
);

Widget _buildImageRow(int imageIndex) => Row(
  children: [
    _buildDecoratedImage(imageIndex),
    _buildDecoratedImage(imageIndex + 1),
  ],
);

class AxisExpandedTest extends StatelessWidget {
  const AxisExpandedTest({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildImageColumn();
  }
}


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