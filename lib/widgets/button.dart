
import 'package:flutter/material.dart';

Widget button({
    required dynamic text,
    required dynamic method,
    int flexValue = 1,
    required dynamic color})
  {
  return Expanded(
    flex: flexValue,
    child: Container(
      child:
        Padding(
          padding: const EdgeInsets.all(1.8),
          child: ElevatedButton(
            onPressed: () {
              method();
            },
            child: text,
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(color),
            ),
          ),
        )
    )
  );
}