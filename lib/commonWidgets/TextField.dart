import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Textfield extends StatelessWidget{
  final String labelText;
  final FormFieldValidator<String> validator;
  final bool obscureText;
  final TextEditingController controller;
  final Function validationFunc;
  final String initialValue;
  final Function onChange;

  Textfield({
    this.labelText,
    this.obscureText,
    this.controller,
    this.validationFunc,
    this.validator,
    this.initialValue,
    this.onChange
  });

    @override
    Widget build(BuildContext context) {
      return TextFormField(
          onChanged: onChange,
          initialValue: initialValue,
          style: TextStyle(color:Colors.black54),
          decoration: InputDecoration(
            contentPadding:
            new EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color:Colors.grey),
            ),
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color:Colors.grey),
            ),
            border:OutlineInputBorder (
              borderSide: BorderSide(color:Colors.grey),
            ),
            labelText: labelText,
            labelStyle: TextStyle(color: Colors.black54,fontFamily: "Zen",fontSize: 20),
          ),
          validator: validator,
          obscureText: obscureText,
          controller: controller);
    }
  }

