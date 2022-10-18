import 'dart:async';
import 'dart:io';

import 'package:eh_hadidy/core/color.dart';
import 'package:eh_hadidy/feature/home/view/units/drawer.dart';
import 'package:eh_hadidy/feature/home/view/units/webview.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final Completer<WebViewController> controller =
      Completer<WebViewController>();

  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
    if (Platform.isIOS) WebView.platform = CupertinoWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: GradientAppBarFb1(controller: controller),
      appBar: AppBar(
        elevation: 14,
        // shape: const RoundedRectangleBorder(
        //   borderRadius: BorderRadius.only(
        //       bottomRight: Radius.circular(70),
        //       bottomLeft: Radius.circular(70)),
        // ),
        actions: [NavigationControls(controller.future)],
      ),
      body: Column(
        children: [
          Expanded(
            child: WebViewWidget(controller: controller),
          ),
        ],
      ),
      drawer: const DrawerFb1(),
    );
  }
}

class GradientAppBarFb1 extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;
  final Completer<WebViewController> controller;
  GradientAppBarFb1({Key? key, required this.controller})
      : preferredSize = const Size.fromHeight(56.0),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    const primaryColor = AppColors.blue;
    const secondaryColor = AppColors.orange;

    return AppBar(
      actions: [NavigationControls(controller.future)],
      // title:
      //     const Text("Flutter Bricks", style: TextStyle(color: Colors.white)),
      backgroundColor: primaryColor,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [primaryColor, secondaryColor],
            stops: [0.5, 1.0],
          ),
        ),
      ),
    );
  }
}
