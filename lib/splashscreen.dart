import 'dart:async';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key, required this.title});
  final String title;

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  void startTimer() {
    const oneSec = Duration(seconds:3);
    Timer.periodic(
      oneSec,
      (Timer timer) {
       print("Timed:");
       Navigator.of(context).pushNamed("/welcome");
       timer.cancel();
      },
    );
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container (
      color: Colors.green,
      child:Column(
        children: [
          ClipOval(
            child: Container(
              padding: const EdgeInsets.all(16),
              color: Colors.white.withAlpha(100),
              child: const Icon(
                Icons.leave_bags_at_home_outlined,
                color: Colors.white,
                size:60,
              )
            )
          ),
          const Text(
            "Ecolog",
            style: TextStyle(
              fontSize: 24, 
              decoration: TextDecoration.none,
              color: Colors.white,
            ),
          )
        ]
      )
    );


  }
}
