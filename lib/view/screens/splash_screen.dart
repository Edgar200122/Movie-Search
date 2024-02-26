import 'dart:async';
import 'package:flutter/material.dart';
import 'package:movie_search/view/components/app_text.dart';
import 'package:movie_search/view/screens/search_screen.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 4000), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const SaerchScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background_image1.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            const TextWidget(
              text: 'LOADING',
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w800,
            ),
            const SizedBox(
              height: 24,
            ),
            LinearPercentIndicator(
              alignment: MainAxisAlignment.center,
              width: 125,
              animation: true,
              lineHeight: 6.0,
              percent: 1,
              animationDuration: 2800,
              barRadius: const Radius.circular(10),
              progressColor: const Color(0xffF47F30),
              backgroundColor: Colors.white,
            ),
            const SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}
