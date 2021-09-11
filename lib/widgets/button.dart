
import 'package:flutter/material.dart';

Widget button({
    required String text,
    required dynamic method,
    int flexValue = 1,
    required dynamic color})
  {
  return Expanded(
    flex: flexValue,
    child: Container(
      child:
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: ElevatedButton(
            onPressed: method,
            child: Text(text),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(color),
            ),
          ),
        )
    )
  );
}