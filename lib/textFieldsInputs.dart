import 'package:flutter/material.dart';

class TextValues extends StatefulWidget {
  final String title;
  final bool hidePassword;
  TextValues({this.title, this.hidePassword});

  @override
  _TextValuesState createState() => _TextValuesState();
}

class _TextValuesState extends State<TextValues> {
  final TextEditingController _textEditingController = TextEditingController();
  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _textEditingController,
      obscureText: false,
      decoration: InputDecoration(labelText: widget.title),
    );
  }
}
