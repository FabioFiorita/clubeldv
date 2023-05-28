import 'package:flutter/material.dart';

class ReturnButton extends StatelessWidget {
  const ReturnButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        //context.replace('/home');
      },
      icon: const Icon(Icons.arrow_back),
    );
  }
}
