import 'package:flutter/material.dart';

PrimaryButton({onPressed, text}){

  return GestureDetector(
    onTap: () => onPressed(),
    child: Container(
      width: 200,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(10.0)
      ),
      child: Center(
        child : Text(
        text,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      )
    ),
  );

}