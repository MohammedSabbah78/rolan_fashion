import 'package:flutter/material.dart';

class LunchScreen extends StatefulWidget {
  const LunchScreen({Key? key}) : super(key: key);

  @override
  State<LunchScreen> createState() => _LunchScreenState();
}

class _LunchScreenState extends State<LunchScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds:3),(){
      Navigator.pushReplacementNamed(context, '/out_boarding_screen');
    });

  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
        body:Image.asset('images/splashScreenIamge.png',
          fit: BoxFit.cover,
          width: double.infinity,
        ),

    );
  }
}
