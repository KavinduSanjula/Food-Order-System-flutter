import 'package:flutter/material.dart';

class FlashScreen extends StatelessWidget {
  const FlashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Image.asset('assets/images/flash-image-1.jpg',
             fit: BoxFit.cover, 
             width: double.infinity, 
             height: double.infinity,
            ),
            
          ],
        ),
      ),
    );
  }
}