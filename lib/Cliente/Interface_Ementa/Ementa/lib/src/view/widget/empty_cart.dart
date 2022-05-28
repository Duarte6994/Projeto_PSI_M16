import 'package:flutter/material.dart';

class EmptyCart extends StatelessWidget {
  const EmptyCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(width: 50),
        const Text("Empty cart",
          style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        textAlign: TextAlign.center,)
      ],
    );
  }
}
