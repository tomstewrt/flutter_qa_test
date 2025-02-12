import 'package:flutter/material.dart';

class MessageText extends StatelessWidget {
  final String? text;

  const MessageText(
    this.text, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return text != null
        ? Text(
            text!,
            style: const TextStyle(color: Colors.green),
          )
        : const SizedBox();
  }
}
