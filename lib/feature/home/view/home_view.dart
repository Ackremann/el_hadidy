import 'dart:async';
import 'dart:io';

import 'package:eh_hadidy/config/routes.dart';
import 'package:eh_hadidy/core/color.dart';
import 'package:eh_hadidy/feature/home/view/units/drawer.dart';
import 'package:eh_hadidy/feature/home/view/units/offers.dart';
import 'package:eh_hadidy/feature/home/view/units/webview.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/bx.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
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
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Offers'),
        // actions: [NavigationControls(controller.future)],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'اعشاب',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          SizedBox(
            height: 150,
            // width: double.infinity,
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return const SizedBox(width: 5);
              },
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return const Center(child: OfferCard());
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'ادويه',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          SizedBox(
            height: 150,
            // width: double.infinity,
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return const SizedBox(width: 5);
              },
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return const Center(child: OfferCard());
              },
            ),
          ),
        ],
      ),
      drawer: const DrawerFb1(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          MagicRouter.navigateTo(
            WebViewWidget(controller: controller),
          );
        },
        child: const Icon(Icons.shopping_cart_checkout_outlined),
      ),
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

class RoundedBadge extends StatelessWidget {
  final String title;
  final Widget icon;
  const RoundedBadge({required this.title, required this.icon, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          color: AppColors.orange, borderRadius: BorderRadius.circular(25.0)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          icon,
          const SizedBox(
            width: 5,
          ),
          Text(
            title,
            style: const TextStyle(
                color: Colors.white, fontSize: 16, fontWeight: FontWeight.w300),
          )
        ],
      ),
    );
  }
}
