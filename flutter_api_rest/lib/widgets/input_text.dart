import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String label;
  final TextInputType keyboardType;
  final bool obscureText, borderEnabled;
  final double fontSize;
  final void Function(String value) onChanged;
  final Function(String value) validator;

  const InputText({
    this.label = "",
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.borderEnabled = false,
    this.fontSize = 15,
    this.onChanged,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      validator: validator,
      style: TextStyle(
        fontSize: fontSize,
        color: Colors.black,
      ),
      keyboardType: keyboardType,
      obscureText: obscureText,
      decoration: InputDecoration(
          enabledBorder: borderEnabled
              ? UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                )
              : InputBorder.none,
          labelText: label,
          prefixIcon: Icon(
            obscureText ? Icons.lock : Icons.email,
            color: Colors.black54,
            size: 20,
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 7),
          labelStyle: TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.w500,
          )),
    );
  }
}
