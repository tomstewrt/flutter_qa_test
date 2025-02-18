import 'package:flutter/material.dart';

class TextInput extends StatefulWidget {
  final String label;
  final String? Function(String?) onValidate;

  const TextInput({
    required this.label,
    required this.onValidate,
    super.key,
  });

  @override
  State<TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: widget.key,
      controller: controller,
      onChanged: (value) {
        final newValue = value.replaceAll(RegExp(r'[^\w\s]'), '');
        if (value != newValue) {
          controller.text = newValue;
        }
      },
      decoration: InputDecoration(labelText: widget.label),
      validator: widget.onValidate,
    );
  }
}
