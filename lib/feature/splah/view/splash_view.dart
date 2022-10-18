import 'dart:async';

import 'package:eh_hadidy/feature/home/view/home_view.dart';
import 'package:flutter/material.dart';

import '../../../config/routes.dart';

class SplashView extends StatefulWidget {
  const SplashView({
    super.key,
  });
  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    splashNavigate();
  }

  Future<void> splashNavigate() async {
    Timer(
      const Duration(seconds: 5),
      () => MagicRouter.navigateAndPopAll(
        const HomeView(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          // Place as the child widget of a scaffold
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/splash_cover.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Image.asset('assets/elhadidy.jpeg') // Place child here
          ),
    );
  }
}
