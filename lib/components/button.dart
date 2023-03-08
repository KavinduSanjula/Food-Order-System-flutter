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

PrimaryIconButton({icon : Icon}){
  return Container(
    padding: EdgeInsets.all(10.0),
    margin: EdgeInsets.only(right: 25),
    decoration: BoxDecoration(
    color: Colors.amber,
    borderRadius: BorderRadius.circular(100)
    ),
    child: icon,
  );
}