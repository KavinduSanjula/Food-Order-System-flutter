import 'package:app_project/components/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 600,),
              Center(
                child: PrimaryButton(
                text: "OrderNow",
                onPressed: (){
                  Navigator.of(context).pushNamed('/orders-list');
                }
              ),
              )
            ],
          ),
        ),
      ),
    );
  }
}