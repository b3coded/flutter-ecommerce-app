import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  Input(
      {@required this.label,
      this.secureText = false,
      this.validator,
      this.hint});

  final String label;
  final String hint;
  final bool secureText;

  final void Function(String) validator;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.3),
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextFormField(
        obscureText: secureText,
        decoration: InputDecoration(
          labelText: label,
          hintText: hint,
          labelStyle: TextStyle(
            color: Colors.grey,
          ),
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
        ),
        cursorColor: Theme.of(context).primaryColor,
        autovalidate: true,
        validator: validator,
      ),
    );
  }
}
