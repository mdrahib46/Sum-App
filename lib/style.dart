import 'package:flutter/material.dart';

InputDecoration appInputDecoration(txt) {
  return InputDecoration(

    labelText: txt,
    contentPadding: const EdgeInsets.all( 20),
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(10)),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Colors.blue.withOpacity(0.6), width: 3.0),),
  );
}

TextStyle resultTextStyle() {
  return const TextStyle(
      fontSize: 30, fontWeight: FontWeight.bold, color: Colors.blue);
}

ButtonStyle elevatedButtonStyle() {
  return ElevatedButton.styleFrom(
      backgroundColor: Colors.blue,
      padding: const EdgeInsets.all(10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ));
}

TextStyle buttonTextStyle()=> const TextStyle(fontSize: 25);
