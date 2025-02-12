import 'package:flutter/material.dart';
import 'package:flutter_qa_test/screens/submit_button.dart';
import 'package:flutter_qa_test/widgets/message_text.dart';
import 'package:flutter_qa_test/widgets/text_input.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final _formKey = GlobalKey<FormState>();
  bool _showOptionalField = false;
  String? _submissionMessage;

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _submissionMessage = 'Form submitted successfully!';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Interview Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextInput(
                label: 'Name',
                onValidate: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Name is required';
                  }

                  if (value.length > 20) {
                    return 'Name must be more than 3 characters and less than 20';
                  }

                  return null;
                },
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Show optional field'),
                  Switch(
                    value: _showOptionalField,
                    onChanged: (value) {
                      setState(() {
                        _showOptionalField = value;
                      });
                    },
                  ),
                ],
              ),
              if (_showOptionalField) ...[
                const SizedBox(height: 16),
                TextInput(
                  label: 'Phone number',
                  onValidate: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Phone number is required';
                    }
                    if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                      return 'Please enter only numbers';
                    }
                    return null;
                  },
                ),
              ],
              const SizedBox(height: 24),
              SubmitButton(
                text: 'Submit',
                onSubmit: _submitForm,
              ),
              const SizedBox(height: 16),
              MessageText(_submissionMessage),
            ],
          ),
        ),
      ),
    );
  }
}
